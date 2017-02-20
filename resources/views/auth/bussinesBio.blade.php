@extends('master')
@section('content')
{{Session::flash('empresaMomento',$empresa->idempresa)}}
{{Session::flash('carpetaMomento',$empresa->carpeta)}}
<div ng-controller="bussinesCtrl">



    <div class="row" style="text-align:center">

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-subscription">
           Crear una publicacion
       </button>

       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-gallery">
           Agregar imagenes a galeria
       </button>

       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-empleo">
        Agregar oferta de empleo
    </button>

</div>


@if(Session::has('job_message'))
<div class="alert alert-success">
    {{ Session::get('job_message') }}
</div>
@endif

@if(Session::has('momento_message'))
<div class="alert alert-success">
    {{ Session::get('momento_message') }}
</div>
@endif

@if(Session::has('gallery_success'))
<div class="alert alert-success">
    {{ Session::get('gallery_success') }}
</div>
@endif

@if(Session::has('gallery_error'))
<div class="alert alert-success">
    {{ Session::get('gallery_error') }}
</div>
@endif



<div class="modal fade modal-ext" id="modal-empleo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Crear oferta de empleo</h4>
            </div>
            <!--Body-->
            {{ Form::open(array('method'=>'POST', 'files'=>true, 'class'=>'form-horizontal control-label','action' => 'empleoController@create')) }}
            <div class="modal-body">
                <p>Añade una oferta de empleo</p>
                <br>

                <div class="md-form">
                    <i class="fa fa-hand-o-right prefix"></i>
                    {{ Form::text('titulo','',array('placeholder'=>'Escribe un titulo...','required'=>'required')) }}
                    <label for="form22">Titulo</label>
                </div>

                <div class="md-form">
                    <i class="fa fa-money prefix"></i>
                    {{ Form::number('sueldo','',array('min'=>'1','placeholder'=>'1000','required'=>'required')) }}
                    <label for="form22">Sueldo Mensual</label>
                </div>

                <div class="md-form">
                    <i class="fa fa-money prefix"></i>
                    {{ Form::email('correo','',array('placeholder'=>'Correo electronico','required'=>'required')) }}
                    <label for="form22">Sueldo Mensual</label>
                </div>

                <div class="md-form">
                    <i class="fa fa-pencil-square-o prefix"></i>
                    {{ Form::textarea('descripcion','',array('class'=>'md-textarea', 'placeholder'=>'Escribe una descripcion...','required'=>'required')) }}
                    <label for="form22">Descripcion</label>
                </div>

                <div class="text-xs-center de">
                   <button type="submit" class="btn btn-success">Publicar</button>
               </div>
           </div>
           {{ Form::close() }}
           <!--Footer-->
           <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
        </div>
    </div>
</div>
</div>




<div class="modal fade modal-ext" id="modal-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Agregar a galeria</h4>
            </div>
            {{ Form::open(array('method'=>'POST', 'files'=>true, 'class'=>'form-horizontal control-label','action' => 'bussinesController@gallery')) }}
            <div class="modal-body">
                <p>Selecciona imagenes para importar a galeria</p>
                <br>
                <div class="md-form">
                 <div class="file-field">
                    <div class="btn btn-primary">
                        <span>Seleccionar</span>
                        {{ Form::file('images[]',array('accept'=>'image/x-png, image/jpeg','required'=>'required', 'multiple'=>true))}}
                    </div>
                    <div class="file-path-wrapper">
                     <input class="file-path validate" type="text" placeholder="Escoge una imagen para tu publicacion">
                 </div>
             </div>
         </div>

         <img id="prev" src="" alt="" style="max-width: 150px;"/>

         <br><br>

         <div class="text-xs-center de">
            {{ Form::submit('Publicar', array('class'=>'btn2 btn-success')) }}
        </div>
    </div>
    {!! Form::close() !!}
    <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
    </div>
</div>
</div>
</div>













<div class="modal fade modal-ext" id="modal-subscription" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Crear publicacion</h4>
            </div>
            <!--Body-->
            {{ Form::open(array('method'=>'POST', 'files'=>true, 'class'=>'form-horizontal control-label','action' => 'momentoController@create')) }}
            <div class="modal-body">
                <p>Escribe una noticia acerca de tu negocio.</p>
                <br>

                <div class="md-form">
                    <i class="fa fa-hand-o-right prefix"></i>
                    {{ Form::text('titulo','',array('class'=>'md-textarea', 'placeholder'=>'Escribe algo...','required'=>'required')) }}
                    <label for="form22">Titulo</label>
                </div>

                <div class="md-form">
                    <i class="fa fa-pencil-square-o prefix"></i>
                    {{ Form::textarea('descripcion','',array('class'=>'md-textarea', 'placeholder'=>'Escribe algo...','required'=>'required')) }}
                    <label for="form22">Descripcion</label>
                </div>

                <div class="md-form">
                 <div class="file-field">
                    <div class="btn btn-primary">
                        <span>Seleccionar</span>
                        {!! Form::file('image', array('accept'=>'image/x-png, image/jpeg', 'onchange'=>'readURL(this)','required'=>'required'))!!}
                    </div>
                    <div class="file-path-wrapper">
                     <input class="file-path validate" type="text" placeholder="Escoge una imagen para tu publicacion">
                 </div>
             </div>
         </div>

         <img id="prev" src="" alt="" style="max-width: 150px;"/>

         <br><br>

         <div class="text-xs-center de">
           {{ Form::submit('Publicar', array('class'=>'btn2 btn-success')) }}
       </div>
   </div>
   {{ Form::close() }}
   <!--Footer-->
   <div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
</div>
</div>
</div>
</div>



<header class="business-header" style="background: url('{{$empresa->carpeta}}logo.jpg') center center no-repeat scroll;";>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="tagline"></h1>
            </div>
        </div>
    </div>
</header>


<!-- Page Content -->
<div class="container">

    <hr>

    <div class="row">
        <div class="col-sm-8">
            <h2>{{$empresa->nombre}}</h2>
            <p>{{$empresa->descripcion}}</p>
            <div class="row">
                <a class="btn btn-primary btn-lg" href="/minegocio/galeria/{{$empresa->idempresa}}">Ver galeria &raquo;</a>
                <a class="btn btn-primary btn-lg" href="/oferta/empleo/{{$empresa->idempresa}}">Ver ofertas de Empleo&raquo;</a>
            </div>

        </div>
        <div class="col-sm-4">
            <h2>Contactanos</h2>
            <strong>{{$empresa->estado->nombre}}</strong>
            <br><br>
            <p>Domicilio: {{$empresa->domicilio}}</p>
            <p>Tel: {{$empresa->telefono}}</p>
            <br>


        </div> 
    </div>

    <!-- /.row -->

    <hr>

    <div class="row">
       @foreach($momentos as $key => $momento)
       <div class="col-sm-4">
        <!--Rotating card-->

        <div class="card-wrapper">
            <div id="card-{{$key+1}}" class="card-rotating effect__click">

                <!--Front Side-->
                <div class="face front">

                    <!-- Image-->
                    <div class="card-up">
                        <a href="{{$momento->imagen}}" data-size="1080x1080">
                         <img src="{{$momento->imagen}}" class="img-fluid">
                     </a>
                 </div>
                 <!--Avatar-->
                 <div class="avatar"><img src="{{$empresa->carpeta}}logo.jpg" class="img-circle img-responsive">
                 </div>
                 <!--Content-->
                 <h4>{{$empresa->nombre}}<a href="/minegocio/momento/delete/{{$momento->idmomento}}"><small style="color:red; font-size:15px"> Eliminar</small></a></h4>
                 <p>{{$momento->titulo}}</p>
                 {{\Carbon\Carbon::setLocale('es')}}
                 <p><small>{{\Carbon\Carbon::createFromTimeStamp(strtotime($momento->created_at))->diffForHumans()}}</small></p>
                 <!--Triggering button-->
                 <a class="rotate-btn" data-card="card-{{$key+1}}"><i class="">Ver mas...</i></a>
             </div>
             <div class="face back">

                <!--Content-->
                <h4>{{$momento->titulo}}</h4>
                <hr>
                <p>{{$momento->descripcion}}</p>
                <hr>
                <p>Publicado el {{date("d/m/Y", strtotime($momento->created_at))}} a las {{date("H:i", strtotime($momento->created_at))}}</p>
                <hr>
                <!--Social Icons-->
<!--                         <ul class="inline-ul">
                            <li><a class="icons-sm fb-ic"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="icons-sm tw-ic"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="icons-sm gplus-ic"><i class="fa fa-google-plus"></i></a></li>
                            <li><a class="icons-sm li-ic"><i class="fa fa-linkedin"></i></a></li>
                        </ul> -->
                        <!--Triggering button-->
                        <a class="rotate-btn" data-card="card-{{$key+1}}"><i class="">Regresar</i></a>

                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>

    {{ $momentos->links() }}
    <!-- /.row -->
    <hr>

    <div class="fb-comments" data-href="https://developers.facebook.com/dffusion/comments/{{$empresa->idempresa}}" data-numposts="5" width="auto"></div>  
</div>
@stop()

@section('script')
<script type="text/javascript" src="/js/controllers/bussines.js"></script>
@stop()