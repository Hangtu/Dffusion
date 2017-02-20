@extends('master')
@section('content')





<div class="col-md-12"> 
   <div class="media">
        <a href="/categorias/empresasvip/" class="media-left waves-light">
            <img class="img-circle" width='100px' height='100px' src="http://www.androidcentral.com/sites/androidcentral.com/files/styles/large/public/topic_images/2016/the-best-2016.png" alt="Without image">
        </a>
        <div class="media-body">
            <br>
            <a href="/categorias/empresasvip/">
                <h4 class="media-heading">Populares</h4>
            </a>
            <p></p>
        </div>
    </div>

    @foreach($categorias as $categoria)
    <div class="media">

        <a href="/categorias/empresas/{{$categoria->idcategoria}}" class="media-left waves-light">
            <img class="img-circle" width='100px' height='100px' src="{{$categoria->imagen}}" alt="Without image">
        </a>
        <div class="media-body">
            <br>
            <a href="/categorias/empresas/{{$categoria->idcategoria}}">
                <h4 class="media-heading">{{$categoria->nombre}}</h4>
            </a>
            <p></p>
        </div>
    </div>
    @endforeach
</div>

@stop()

@section('script')
@stop()