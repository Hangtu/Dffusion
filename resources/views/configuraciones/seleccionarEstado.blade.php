@extends('master')
@section('content')




@if(Session::has('estado_msg'))
<div class="alert alert-success">
    {{ Session::get('estado_msg') }}
</div>
@endif

</style>
<div class="row">
  <div class="list-group">
  <a href="#" class="list-group-item disabled">Selecciona un estado</a>
  @foreach($estados as $key => $estado)
    <a href="/seleccionar/estado/{{$key}}/{{$estado}}" class="list-group-item">{{$estado}}</a>
  @endforeach
  </div>
</div>


@stop()

@section('script')
@stop()