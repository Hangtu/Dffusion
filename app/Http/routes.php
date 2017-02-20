<?php
use App\Empresa;
use App\Categoria;
use App\Estado;
use App\Momento;
use App\Galeria;
use App\Empleo;
use App\User;
use App\Welcome;



Route::group(['middleware'=>'auth'],function(){	
	
	Route::any('/bienvenido',function(){
		$vistas = Welcome::first();
		$empresas = Empresa::count();
		return view('bienvenido')->with('contador',$empresas)->with('vistas',$vistas);
	});
	//PRINCIPAL

	
	Route::any('/', function(){
		$momentos = Momento::where('status','=','1')->orderBy('fecha','desc')->whereHas('empresa',function($q)
		{
			$q->where('fk_estado',Session::get('ESTADO'));
		})->paginate(6);
		foreach ($momentos as $momento) {
			$momento->empresa;
		}
		return view('principal.principalMain')->with('momentos',$momentos);
	});

	Route::get('/negocio/{idempresa}', function($idempresa){
		$userID =(int)Session::get('userID');
		$idempresa =(int)$idempresa;
		$empresa = Empresa::where('idempresa',$idempresa)->first();
		$momentos = DB::table('momento')->where('fk_empresa','=',$idempresa)->where('status','1')->orderBy('fecha','desc')->paginate(6);
		$empresa->estado;
		if($empresa == '[]'){
			return response('Acceso no autorizado.', 401);
		}else{
			return view('principal.principalBio')->with('empresa',$empresa)->with('momentos',$momentos);
		}
	});
	//FIN PRINCIPAL



	//DESTACADO
	Route::any('/destacado', function(){
		$momentos = Momento::where('tipo','2')->where('status','1')->orderBy('fecha','desc')->whereHas('empresa',function($q)
		{
			$q->where('fk_estado',Session::get('ESTADO'));
		})->paginate(6);
		foreach ($momentos as $momento) {
			$momento->empresa;
		}
		return view('destacado.destacado')->with('momentos',$momentos);
	});
	//FIN DESTACADO



	//CATEGORIAS
	Route::any('/categorias', function(){
		$categorias = Categoria::orderBy('nombre','asc')->get();
		return view('categorias.categorias')->with('categorias',$categorias);
	});


	Route::any('/categorias/empresas/{categoria}', function($categoria){
		$categoria = (int) $categoria;
		$empresas = Empresa::where('fk_categoria',$categoria)->where('fk_estado','=',Session::get('ESTADO'))->orderBy('nombre','asc')->get();
		return view('categorias.empresas')->with('empresas',$empresas);
	});

	Route::any('/categorias/empresasvip/', function(){
		$empresas = Empresa::where('tipo','=','2')->where('fk_estado','=',Session::get('ESTADO'))->orderBy('nombre','asc')->get();
		return view('categorias.empresasVIP')->with('empresas',$empresas);
	});
	//FIN CATEGORIAS




	
	//CRUD BUSSINES
	Route::any('/negocios',function(){
		$userID =(int)Session::get('userID');
		$empresas = Empresa::get()->where('fk_user',$userID);
		return view('auth.bussinesMain')->with('empresas',$empresas);
		
	});

	Route::get('/negocios/create', function(){
		$categorias = Categoria::pluck('nombre', 'idcategoria');
		$estados = Estado::pluck('nombre', 'id');
		return view('auth.bussinesCreate')->with('categorias',$categorias)->with('estados',$estados);
	});
	Route::post('/negocios/create', 'bussinesController@create');

	Route::get('/negocios/update/{id}', function($id){ //Carga los datos en el blade
		$categorias = Categoria::pluck('nombre', 'idcategoria');
		$estados = Estado::pluck('nombre', 'id');
		$userID =(int)Session::get('userID');
		$idempresa = (int)$id;
		$empresas = Empresa::get()->where('fk_user',$userID)->where('idempresa',$idempresa);
		return view('auth.bussinesUpdate')->with('empresas',$empresas)->with('categorias',$categorias)->with('estados',$estados);
	});
	Route::post('/negocios/update', 'bussinesController@update'); // Modifica los datos


	Route::get('/minegocio/{idempresa}', function($idempresa){
		$userID =(int)Session::get('userID');
		$idempresa =(int)$idempresa;
		//$empresa = Empresa::get()->where('fk_user',$userID)->where('idempresa',$idempresa);

		$empresa = Empresa::where('fk_user', $userID)->where('idempresa',$idempresa)->first();

		$momentos = DB::table('momento')->where('fk_empresa','=',$idempresa)->where('status','=','1')->orderBy('fecha','desc')->paginate(6);
		//$momentos = Momento::where('fk_empresa',$idempresa)->get();
		$empresa->estado;
		if($empresa == '[]'){
			return response('Acceso no autorizado.', 401);
		}else{
			return view('auth.bussinesBio')->with('empresa',$empresa)->with('momentos',$momentos);
		}
	});
	 Route::post('/minegocio/momento/create', 'momentoController@create'); // Modifica los datos

	 Route::get('/minegocio/momento/delete/{idmomento}', function($idmomento){ //BORRA MOMENTO
	 	$momentoID = (int) $idmomento;
	 	$momento = Momento::find($idmomento);
	 	$momento->status = 0;
	 	$momento->save();
	 	return redirect('/minegocio/'.Session::get('empresaMomento'));
	 });
	 //END CRUD BUSSINES


     Route::post('/buscar', 'searchController@find'); // Modifica los datos
	//END CRUD BUSSINES

 });


Route::group(['middleware'=>'auth'],function(){	

    //ELIMINAR  IMAGENES 
	Route::any('/minegocio/galeria/{idempresa}', function($idempresa){
		$idempresa = (int) $idempresa;
		$imagenes = Galeria::where('fk_empresa',$idempresa)->where('status','=','1')->orderBy('created_at','desc')->get();
		return view('auth.bussinesGallery')->with('imagenes',$imagenes);
	});

	Route::post('/gallery/delete', 'bussinesController@galleryDelete');

   //AGREGAR IMAGENES A GALERIA
	Route::any('/galeria/empresa/{idempresa}', function($idempresa){
		$idempresa = (int) $idempresa;
		$imagenes = Galeria::where('fk_empresa',$idempresa)->where('status','=','1')->orderBy('created_at','desc')->get();
		return view('galeria.galeria')->with('imagenes',$imagenes);
	});
	Route::post('/gallery', 'bussinesController@gallery');
});




Route::group(['middleware'=>'auth'],function(){	

	Route::post('/oferta/empleo/crear', 'empleoController@create');

	Route::post('/oferta/empleo/delete', 'empleoController@delete');
	
	Route::any('/oferta/empleo/{idempresa}', function($idempresa){
		$idempresa = (int) $idempresa;
		$empleos = Empleo::where('fk_empresa',$idempresa)->where('status','=','1')->orderBy('created_at','desc')->get();
		
		foreach ($empleos as $empleo) {
			$empleo->empresa;
		}

		return view('auth.bussinesEmpleo')->with('empleos',$empleos);
	});

	Route::any('/negocio/empleo/{idempresa}', function($idempresa){
		$idempresa = (int) $idempresa;
		$empleos = Empleo::where('fk_empresa',$idempresa)->where('status','=','1')->orderBy('created_at','desc')->paginate(10);
		
		foreach ($empleos as $empleo) {
			$empleo->empresa;
		}

		return view('empleo.empleoList')->with('empleos',$empleos);
	});


	Route::any('/empleo', function(){

		$empleos = Empleo::where('status','=','1')->orderBy('created_at','desc')->whereHas('empresa',function($q)
		{
			$q->where('fk_estado',Session::get('ESTADO'));
		})->paginate(10);
		foreach ($empleos as $empleo) {
			$empleo->empresa;
		}

		
		return view('empleo.empleoList')->with('empleos',$empleos);
	});


	Route::get('/seleccionar/estado', function(){
		$estados = Estado::pluck('nombre', 'id');
		//return response($estados);
		return view('configuraciones.seleccionarEstado')->with('estados',$estados);
	});

	Route::any('/seleccionar/estado/{idestado}/{estado}', function($idestado,$estado){
		$estadoID = (int) $idestado; 
		Session::put('ESTADO',$idestado);
		Session::put('NOMBRE_ESTADO',$estado);
		Session::flash('estado_msg','Se selecciono el estado de: '.$estado);
		$usuario = User::find((int)Session::get('userID'));
	 	$usuario->estado = $idestado;
	 	$usuario->save();
		return redirect('/seleccionar/estado');
	});
});









// Auth with Facebook
Route::get('/facebookLogin', 'facebookController@redirectToProvider');
Route::get('/callback2', 'facebookController@handleProviderCallback');


// Logout 
Route::any('/logout', 'facebookController@logout');

Route::any('/moreviews', function(){
    $time = date('H:i');
	

	$vistas = Welcome::first();
	$vistas_temp = $vistas->vistas;
	$vist = Welcome::find(1);
	$vist->vistas = $vistas_temp+1;
	
	if($time == '17:00' || $time == '22:00' || $time == '03:00' || $time == '09:00' || $time == '12:00'){
		$vist->vistas_temp = $vistas_temp;
	}	

	$vist->save();
});






