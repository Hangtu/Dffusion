<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Momento extends Model {
	protected $table = 'momento';
	protected $primaryKey = 'idmomento';



	public function empresa(){
		return $this->hasOne('App\Empresa','idempresa','fk_empresa');
	}
}
