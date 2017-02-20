@extends('master')
@section('content')


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
                <a class="btn btn-primary btn-lg" href="/galeria/empresa/{{$empresa->idempresa}}">Ver galeria &raquo;</a>
                <a class="btn btn-primary btn-lg" href="/negocio/empleo/{{$empresa->idempresa}}">Ver ofertas de Empleo&raquo;</a>
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
                 <h4>{{$empresa->nombre}}</h4>
                 <p>{{$momento->titulo}}</p>
                 {{\Carbon\Carbon::setLocale('es')}}
                 <p><small>{{\Carbon\Carbon::createFromTimeStamp(strtotime($momento->created_at))->diffForHumans()}}</small></p>
                 <!--Triggering button-->
                 <a class="rotate-btn" data-card="card-{{$key+1}}"><i class="">Ver mas...</i></a>

             </div>
             <!--/.Front Side-->

             <!--Back Side-->
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
                    <!--/.Back Side-->

                </div>
            </div>
            
            <!--/.Rotating card--> 

        </div>
        @endforeach
        <!--/.Card-->
    </div>

    {{ $momentos->links() }}
    <!-- /.row -->
    <hr>

    <div class="fb-comments" data-href="https://developers.facebook.com/dffusion/comments/{{$empresa->idempresa}}" data-numposts="5" width="auto"></div>  
</div>
@stop()

@section('script')

@stop()