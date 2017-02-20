@extends('master')
@section('content')
<div ng-controller="bussinesCtrl">

	

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




	
	{!! Form::open(array('method'=>'post', 'files'=>true, 'class'=>'form-horizontal control-label','action' => 'bussinesController@update')) !!}
	@foreach($empresas as $empresa)


	{{Session::flash('empresaID',$empresa->idempresa)}}
	{{Session::flash('carpeta',$empresa->carpeta)}}

	<div class="form-group">
		{!! Form::label('nombre', 'Nombre', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-10">
			{{ Form::text('nombre',$empresa->nombre,array('class'=>'form-control', 'placeholder'=>'Ingresa el nombre de tu negocio...')) }}
		</div>
	</div>

	<div class="form-group">
		{!! Form::label('domicilio', 'Domicilio', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-10">
			{{ Form::text('domicilio',$empresa->domicilio,array('class'=>'form-control', 'placeholder'=>'Ingresa un domicilio...','required'=>'required')) }}
		</div>
	</div>


	<div class="form-group">
		{!! Form::label('telefono', 'Telefono', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-10">
			{{ Form::text('telefono',$empresa->telefono,array('class'=>'form-control', 'placeholder'=>'Ingresa un telefono...','required'=>'required')) }}
		</div>
	</div>


	<div class="form-group">
		{!! Form::label('descripcion', 'Descripcion', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-5">
			{{ Form::textarea('descripcion',$empresa->descripcion,array('class'=>'form-control', 'placeholder'=>'Agrega una descripcion de tu empresa..','required'=>'required')) }}
		</div>
	</div>



	<div class="form-group">
		{!! Form::label('categoria', 'Categoria', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-5">
			{{Form::select('categoria', $categorias,$empresa->fk_categoria, ['class'=> 'form-control',  'placeholder' => 'Selecciona una categoria...', 'required'=>'required'])}}
		</div>
	</div>


	<div class="form-group">
		{!! Form::label('estado', 'Estado', array('class'=>'col-sm-2 control-label'))!!}
		<div class="col-sm-5">
			{{Form::select('estado', $estados, $empresa->fk_estado, ['class'=> 'form-control',  'placeholder' => 'Selecciona un estado...', 'required'=>'required'])}}
		</div>
	</div>


	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
				<label>
					{!!Form::checkbox('servicioDomicilio', '1', $empresa->disponible)!!} ¿Cuentas con servicio a domicilio?
				</label>
			</div>
		</div>
	</div>


	<div class="form-group">
		<label class="col-sm-2 control-label">Logotipo</label>
		<div class="col-sm-offset-2 col-sm-10">
			<img id="prev" src="{{$empresa->carpeta}}logo.jpg" alt="" style="max-width: 150px;"/>
			{!! Form::file('image', array('accept'=>'image/x-png, image/jpeg', 'onchange'=>'readURL(this)'))!!}
		</div>
	</div>


	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			{!! Form::submit('Actualizar Datos', array('class'=>'btn2 btn-success')) !!}
		</div>
	</div>
    @endforeach
	{!! Form::close() !!}

</div>
@stop()

@section('script')
<script type="text/javascript" src="/js/controllers/bussines.js"></script>
@stop()