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
</style>

<div class="row">
     @foreach($imagenes as $key => $imagen)
     <div class="col-sm-3">
      <div class="card">
        <div class="card-up">
          <a href="{{$imagen->imagen}}" data-size="1080x1080">
           <img  style="heigth:195px !important" src="{{$imagen->imagen}}" class="img-fluid">
         </a>
       </div>
       <div class="card-block">
        {{\Carbon\Carbon::setLocale('es')}}
        <p class="card-text">{{\Carbon\Carbon::createFromTimeStamp(strtotime($imagen->created_at))->diffForHumans()}}</p>
        {{ Form::open(array('method'=>'POST', 'class'=>'form-horizontal control-label','action' => 'bussinesController@galleryDelete')) }}  
        <input type="hidden" name="imagen" value="{{$imagen->idgaleria}}">
        <button type="submit" class="btn btn-danger">
         Eliminar
       </button>
       {{ Form::close() }}
     </div>
   </div>
</div>
    @endforeach
</div>

@stop()

@section('script')
@stop()