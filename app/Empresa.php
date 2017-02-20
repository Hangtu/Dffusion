<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empresa extends Model{
    protected $table = 'empresa';
    protected $primaryKey = 'idempresa';



    public function estado(){
		  return $this->hasOne('App\Estado','id','fk_estado');
	  }
}
