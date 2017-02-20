@extends('master')
@section('content')

{{Session::reflash()}}

<style>
.img-fluid, .carousel-inner > .carousel-item > img, .carousel-inner > .carousel-item > a > img {
  display: block;
  max-width: 100%;
  height: 195px;
  width: 260px;
}
p{
 margin:0 0 0px !important;
}
}
</style>

<div class="row">
  @foreach($empleos as $key => $empleo)
  <div class="media">
    <a class="media-left waves-light" href="/negocio/{{$empleo->empresa->idempresa}}">
      <img class="img-circle" width='100px' height='100px'  src="{{$empleo->empresa->carpeta}}logo.jpg" alt="Generic placeholder image">
    </a>
    <div class="media-body">
      <h5 class="media-heading">{{$empleo->titulo}}</h5>
      {{\Carbon\Carbon::setLocale('es')}}
      <h6>{{number_format($empleo->sueldo,2)}} MXN MENSUAL</h6>
      <p>{{$empleo->descripcion}}</p>
      <p>{{$empleo->correo}}</p>
      <small class="card-text">{{\Carbon\Carbon::createFromTimeStamp(strtotime($empleo->created_at))->diffForHumans()}}</small>    
      {{ Form::open(array('method'=>'POST', 'class'=>'form-horizontal control-label','action' => 'empleoController@delete')) }}  
      <input type="hidden" name="empleo" value="{{$empleo->idempleo}}">
      <button type="submit" class="btn btn-danger">
       Eliminar
     </button>
     {{ Form::close() }}
   </div>
 </div>




 @endforeach
</div>

@stop()

@section('script')
@stop()