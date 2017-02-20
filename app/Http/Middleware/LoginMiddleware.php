<?php

namespace App\Http\Middleware;

use Closure;
use DB;

class LoginMiddleware{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next){   
       
 $email = $request->input('user.email');
        $password = $request->input('user.password');
        $sql = DB::select("SELECT idusuario, nombre from usuario WHERE correo = '$email' AND password = '$password'");

        if(sizeof($sql) == 1) {
             $request->session()->put('active', '1');
             $request->session()->put('user', '$sql[0]->idusuario');
             return $next($request);
         }else{
             //return response('Unauthorized.', 401);
             return response('Unauthorized');
         }
    }
}
