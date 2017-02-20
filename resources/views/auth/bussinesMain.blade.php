@extends('master')
@section('content')
<div ng-controller="bussinesCtrl">


	@if(Session::has('success_message'))
	<div class="alert alert-success">
		{{ Session::get('success_message') }}
	</div>
	@endif

	@if(Session::has('premium_message'))
	<div class="alert alert-warning">
		{{ Session::get('premium_message') }}
	</div>
	@endif

	@if(Session::has('update_message'))
	<div class="alert alert-success">
		{{ Session::get('update_message') }}
	</div>
	@endif


	@if($errors->any())
	<div class="alert alert-danger">
		@foreach($errors->all() as $error)
		<p>{{ $error }}</p>
		@endforeach
	</div>
	@endif

	<div class="page-header">
		<h1>Tus negocios <small>Crea un negocio y promocionalo</small> <a href="/negocios/create"><button type="button" class="btn btn-primary">Crear un negocio</button></h1>
	</div>


	@foreach($empresas as $empresa)
	
	<div class="media">
		<div class="media-left media-middle">
			<a href="/negocios/update/{{$empresa->idempresa}}">
				<img class="media-object bussinesImagesList img-circle" src="{{$empresa->carpeta}}logo.jpg" alt="...">
			</a>
		</div>
		<div class="media-body">
			<a href="/minegocio/{{$empresa->idempresa}}">
				<h4 class="media-heading">{{$empresa->nombre}}</a>
					<a href="/negocios/update/{{$empresa->idempresa}}"><small>Editar</small></h4></a>
					<div class="three-dots">{{$empresa->descripcion}}</div>
				</div>
			</div>

			@endforeach


		</div>
		@stop()

		@section('script')
		<script type="text/javascript" src="/js/controllers/bussines.js"></script>
		@stop()