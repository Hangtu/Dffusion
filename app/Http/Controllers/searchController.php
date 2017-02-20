<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Empresa;

use Session;

class searchController extends Controller{
	public function find(Request $request){
		$buscar = $request->input('buscar');
		$empresas = Empresa::where('nombre', 'LIKE', '%'.$buscar.'%')->where('fk_estado','=',Session::get('ESTADO'))->get();
		foreach ($empresas as $empresa) {
			$empresa->estado;
		}
		return view('search.buscar')->with('empresas',$empresas);
	}
}
