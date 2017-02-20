<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use App\Empresa;
use App\Momento;
use DB;
use File;
use Validator;
use Session;
use Carbon\Carbon;

class momentoController extends Controller{

	public function create(Request $request){

       $messages = [
       'required' => '* :attribute es requerido.',
       ];

       $validator = Validator::make($request->all(), [
        'titulo' => 'required',
        'descripcion' => 'required',
        'image' => 'required'
        ],$messages);

       if ($validator->fails()) {
        return redirect('/minegocio/'.Session::get('empresaMomento'))
        ->withErrors($validator)
        ->withInput();
    }else{
        $momento = new Momento;
        $momento->titulo = $request->input('titulo');
        $momento->descripcion = $request->input('descripcion'); 
        $momento->fecha = Carbon::now();
        $momento->fk_empresa = Session::get('empresaMomento');      

        $image = Input::file('image');
        if($image !== null){
           $destinationPath = '../public'.Session::get('carpetaMomento');
           $filename = time().'.jpg';
           $path = Session::get('carpetaMomento').$filename;
           $momento->imagen = $path;
           $upload_success = $image->move($destinationPath, $filename);
        }
       $momento->save();
       Session::flash('momento_message', 'Publicacion creada!');
       return redirect('/minegocio/'.Session::get('empresaMomento'));
     }
   }
}


