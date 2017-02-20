<?php

namespace App\Http\Controllers;

use Socialite;

use DB;

use Auth;

use Artisan;

use Illuminate\Http\Request;

use App\Http\Requests;

class facebookController extends Controller{
    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return Response
     */
    public function redirectToProvider(){
        return Socialite::driver('facebook')->redirect();
    }
    /**
     * Obtain the user information from GitHub.
     *
     * @return Response
     */
    
    public function handleProviderCallback(Request $request){

        $user = Socialite::with('facebook')->user();
        
        $userID = substr($user->getId(),8);
        $userName = $user->getName();
        $userMail = $user->getEmail();
        $userImg = $user->getAvatar();


        $contador = DB::select("SELECT COUNT(*) as count FROM users WHERE id = '$userID'");
        $value = $contador[0]->count; // si es mayor a 0 autenticar, si no registrar y autenticar 

        if($value == '0'){
            DB::insert("INSERT INTO users (id,name,email,imagen) 
                VALUES ('$userID','$userName','$userMail','$userImg')");
            Auth::loginUsingId($userID);
        }else{  
            Auth::loginUsingId($userID);   
        }

         $estado = DB::select("SELECT estado FROM users WHERE id = '$userID'");
         $nombreEstado = DB::select("SELECT nombre FROM estado WHERE id = ".$estado[0]->estado);


         $request->session()->put('ESTADO', $estado[0]->estado);
         $request->session()->put('NOMBRE_ESTADO', $nombreEstado[0]->nombre);
         $request->session()->put('userID', $userID);
         $request->session()->put('userName', $userName);
         $request->session()->put('userImage', $userImg);
         
         return redirect('/');
    }


    public function logout(){
Artisan::call('cache:clear'); 
Artisan::call('config:clear');           
Auth::logout();
     
       return redirect('/');
   }

}


