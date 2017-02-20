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

</style>

<div class="row">
  @foreach($empleos as $key => $empleo)
  <div class="media">
    <a class="media-left waves-light" href="/negocio/{{$empleo->empresa->idempresa}}">
      <img class="img-circle" width='100px' height='100px'  src="{{$empleo->empresa->carpeta}}logo.jpg" alt="Generic placeholder image">
    </a>
    <div class="media-body">
      <h4 class="media-heading">{{$empleo->titulo}}</h4>
      {{\Carbon\Carbon::setLocale('es')}}
      <h6>{{number_format($empleo->sueldo,2)}} MXN MENSUAL</h6>
      <p>{{$empleo->descripcion}}</p>
      <p>{{$empleo->correo}}</p>
      <small class="card-text">{{\Carbon\Carbon::createFromTimeStamp(strtotime($empleo->created_at))->diffForHumans()}}</small>    
    </div>
  </div>
  @endforeach
</div>

{{ $empleos->links() }}

@stop()

@section('script')
@stop()