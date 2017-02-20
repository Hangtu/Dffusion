@extends('master')
@section('content')


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
                        <a href="/negocio/{{$momento->empresa->idempresa}}">
                        <div class="avatar"><img src="{{$momento->empresa->carpeta}}logo.jpg" class="img-circle img-responsive">
                        </a>
                        </div>
                        <!--Content-->
                        <h4>{{$momento->empresa->nombre}}</h4>
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

    {{$momentos->links() }}
@stop()

@section('script')
@stop()