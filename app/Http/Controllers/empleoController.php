<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Empresa;
use App\Empleo;
use DB;
use File;
use Validator;
use Session;
use Carbon\Carbon;

class empleoController extends Controller{
    
public function create(Request $request){
       $messages = [
       'required' => '* :attribute es requerido.',
       ];

       $validator = Validator::make($request->all(), [
        'titulo' => 'required',
        'descripcion' => 'required',
        'sueldo' => 'required'
        ],$messages);

       if ($validator->fails()) {
        return redirect('/minegocio/'.Session::get('empresaMomento'))
        ->withErrors($validator)
        ->withInput();
    }else{
        $empleo = new Empleo;
        $empleo->titulo = $request->input('titulo');
        $empleo->sueldo = $request->input('sueldo');
        $empleo->correo = $request->input('correo'); 
        $empleo->descripcion = $request->input('descripcion');        
        $empleo->fk_empresa = Session::get('empresaMomento');      
        $empleo->save();
        Session::flash('job_message', 'Empleo publicado!');
        return redirect('/minegocio/'.Session::get('empresaMomento'));
     }
   }


   public function delete(Request $request){
       $request->session()->reflash();
       $empleoID = (int) $request->input('empleo');
       $empleo = Empleo::find($empleoID);
       $empleo->status = 0;
       $empleo->save();
       return redirect('/oferta/empleo/'.Session::get('empresaMomento'));
   }

}
