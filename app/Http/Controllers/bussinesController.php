<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use App\Empresa;
use App\Galeria;
use DB;
use File;
use Validator;
use Session;


class bussinesController extends Controller{
    public function create(Request $request){
        $userID = $request->session()->get('userID');
        $select = DB::select("SELECT COUNT(*) as count FROM empresa WHERE fk_user = '$userID'");
        $noEmpresas = $select[0]->count;

        if ($noEmpresas > 0) { // Si quiere crear otra empresa y no es premium
            Session::flash('premium_message', 'Tienes que ser socio para crear mas de una empresa');
            return redirect('/negocios');
        }else{
            //VALIDACIONES DE LOS REQUEST
            $messages = [
            'required' => '* :attribute es requerido.',
            ];

            $validator = Validator::make($request->all(), [
                'nombre' => 'required',
                'domicilio' => 'required',
                'telefono'=>'required',
                'descripcion' => 'required',
                'categoria' => 'required',
                'estado' => 'required',
                'image' => 'required',
                'image' => 'mimes:jpeg,jpg,png'
                ],$messages);

            if ($validator->fails()) {
                return redirect('/negocios')
                ->withErrors($validator)
                ->withInput();
            }else{
                $empresa = new Empresa;
                $empresa->nombre = $request->input('nombre');
                $empresa->domicilio = $request->input('domicilio');         
                $empresa->telefono = $request->input('telefono');
                $empresa->descripcion = $request->input('descripcion');
                $empresa->disponible = $request->input('servicioDomicilio');
                $empresa->fk_user = $userID;
                $empresa->fk_categoria = $request->input('categoria');
                $empresa->fk_estado = $request->input('estado');
                $image = Input::file('image');
                

                $insertedID = DB::getPdo()->lastInsertId();

                $destinationPath = "../public/resources/assets/images/".$userID.$insertedID;
                $filename = $image->getClientOriginalName();
                $extension = $image->getClientOriginalExtension();
                $filename = 'logo.jpg';
                $upload_success = $image->move($destinationPath, $filename);

                $empresa->carpeta = "/resources/assets/images/".$userID.$insertedID.'/';
                $empresa->save();


                Session::flash('success_message', 'Tu negocio fue creado!!');
                return redirect('/negocios');
            }
        }
    }

    public function read(Request $request){
        //
    }

    public function update(Request $request){

        $messages = [
        'required' => '* :attribute es requerido.',
        ];

        $validator = Validator::make($request->all(), [
            'nombre' => 'required',
            'domicilio' => 'required',
            'telefono'=>'required',
            'descripcion' => 'required',
            'categoria' => 'required',
            'estado' => 'required',
            'image' => 'mimes:jpeg,jpg,png'
            ],$messages);

        if($validator->fails()) {
            return redirect('/negocios/update/'.Session::get('empresaID'))
            ->withErrors($validator)
            ->withInput();
        }else{
           $empresa = Empresa::find(Session::get('empresaID'));
           $empresa->nombre = $request->input('nombre');
           $empresa->domicilio = $request->input('domicilio');         
           $empresa->telefono = $request->input('telefono');
           $empresa->descripcion = $request->input('descripcion');
           $empresa->disponible = $request->input('servicioDomicilio');
           $empresa->fk_categoria = $request->input('categoria');
           $empresa->fk_estado = $request->input('estado');

           $image = Input::file('image');
           if($image !== null){
             $destinationPath = '../public'.Session::get('carpeta');
             $filename = 'logo.jpg';
             $upload_success = $image->move($destinationPath, $filename);
         }
         $empresa->save();
         Session::flash('update_message', 'Tu negocio fue modificado con exito');
         return redirect('/negocios');
     }
 }

 public function delete(Request $request){

 }


public function gallery() {
    // getting all of the post data
        $files = Input::file('images');
    // Making counting of uploaded images
        $file_count = count($files);
    // start count how many uploaded
        $uploadcount = 0;
        $filename;
        foreach($files as $file) {
       $rules = array('file' => 'required | mimes:jpeg,jpg,png'); //'required|mimes:png,gif,jpeg,txt,pdf,doc'
       $validator = Validator::make(array('file'=> $file), $rules);
       
       if($validator->passes()){

        $galeria = new Galeria;
        
        $galeria->fk_empresa = Session::get('empresaMomento'); 


        $destinationPath = '../public'.Session::get('carpetaMomento');
        $extension = 'jpg';
        $filename = time().rand(111111111,999999999).'.'.$extension;
        $galeria->imagen = Session::get('carpetaMomento').$filename;
        $upload_success = $file->move($destinationPath, $filename);
        $galeria->save();
        $uploadcount ++;
       }
     }
   if($uploadcount == $file_count){
       Session::flash('gallery_success', 'Tus imagenes fueron cargadas');
    } 
   else {
      Session::flash('gallery_error', 'Algunas imagenes no pudieron ser cargadas');
   }
    return redirect('/minegocio/'.Session::get('empresaMomento'));
}


public function galleryDelete(Request $request){
       $request->session()->reflash();
       $imagenID = (int) $request->input('imagen');
       $galeria = Galeria::find($imagenID);
       $galeria->status = 0;
       $galeria->save();
       return redirect('/minegocio/galeria/'.Session::get('empresaMomento'));
   }
}
