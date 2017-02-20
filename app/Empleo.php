<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleo extends Model
{
    protected $table = 'empleo';
    protected $primaryKey = 'idempleo';

      public function empresa(){
		  return $this->hasOne('App\Empresa','idempresa','fk_empresa');
	  }
}
