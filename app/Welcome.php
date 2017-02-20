<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Welcome extends Model{
    
       /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'welcome';
    protected $primaryKey = 'id_welcome';

}

