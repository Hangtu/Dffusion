@extends('master')
@section('content')
<div ng-controller="bienvenidoCtrl">	

	<div class="page-header" style="text-align:center">
		<h1>La Nueva Forma De Promocionar Tu Negocio</h1>
		<h1><small>Bienvenidos a Dffusion</small></h1>
		<p>{{$vistas->vistas_temp}} Visitas</p>
		<a href="/facebookLogin"><button type="button"class="btn btn-primary">Registrate <i class="fa fa-facebook-official" aria-hidden="true"></i></button></a>
	</div>

	<div style="text-align:center">
		<p><h5>Registrate, inicia sesión y encuentra promociones de todo tipo de negocios.</h5></p>
	</div>

	<div style="text-align:center">
		<iframe width="780" height="420" src="https://player.vimeo.com/video/152861375" frameborder="0" allowfullscreen></iframe>
	</div>
</div>
@stop()

<footer>
    <div class="row">
        <div class="col-lg-12">
            <p style="text-align: center; color:#D8D8D8;">Dffusion &copy; 2016<a href="mailto:hangtuwlf@gmail.com"> Contactanos</a></p>
        </div>
    </div>
</footer>


@section('script')
<script src="js/controllers/bienvenido.js"></script>
@stop()
