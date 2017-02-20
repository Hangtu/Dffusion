@extends('master')
@section('content')

@if(count($empresas) === 0)
<div class="col-md-12">
    <!--Card Primary-->
    <div class="card card-danger text-xs-center z-depth-2">
        <div class="card-block">
            <p class="white-text">No se encontraron resultados</p>
        </div>
    </div>
</div>
@endif

@foreach($empresas as $empresa)
<div class="col-md-4">
    <div class="card">
        <div class="view overlay hm-white-slight">
            <a href="/negocio/{{$empresa->idempresa}}">
                <img src="{{$empresa->carpeta}}logo.jpg" class="img-fluid" alt="">
            </a>
            <a>
                <div class="mask"></div>
            </a>
        </div>
        <a class="btn-floating btn-action" href="/negocio/{{$empresa->idempresa}}"><i class="fa fa-chevron-right"></i></a>

        <div class="card-block">
            <h4 class="card-title">{{$empresa->nombre}}</h4>
            <hr>
            <p class="card-text" style="text-align:center"><i class="fa fa-mobile" aria-hidden="true"></i> {{$empresa->telefono}}</p>
        </div>

        <div class="card-data">
            <ul>
                <li><i class="fa fa-map-marker"></i> {{$empresa->estado->nombre}}</li>
            </ul>
        </div>
    </div>
</div>
@endforeach

@stop()

@section('script')
@stop()