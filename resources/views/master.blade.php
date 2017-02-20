<html ng-app="dffusion">
<head>
 <title>Dffusion</title>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="">
 <meta name="author" content="">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
 <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css">

 <link rel="stylesheet" href="/bower_components/mdb/css/bootstrap.css">
 <!-- <link rel="stylesheet" href="/bower_components/mdb/css/mdb.min.css"> -->

 <link rel="stylesheet" href="/bower_components/mdb/css/style.css">

<!--  <link rel="stylesheet" href="/bower_components/photoswipe/dist/photoswipe.css">
 <link rel="stylesheet" href="/bower_components/photoswipe/dist/default-skin/default-skin.css"> -->


 <link href="/css/load_files.css" rel="stylesheet">
 <link href="/css/business-frontpage.css" rel="stylesheet">

</head>

<body>
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        @if (Auth::check())
        <a href="/seleccionar/estado">
          <p class="navbar-brand">{{Session::get('NOMBRE_ESTADO') }}</p>
        </a>
        @else
        <a class="navbar-brand">{{$contador}} negocios registrados.</a>
        @endif
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" > 
        @if(Auth::check())
        <ul class="nav navbar-nav">
          <li>
            <a href="/">Principal</a>
          </li>
          <li>
            <a href="/destacado">Destacado</a>
          </li>
          <li>
            <a href="/categorias">Categorias</a>
          </li>
          <li>
            <a href="/negocios">Mis negocios</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mas</a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
              <a class="dropdown-item" href="/empleo">Ofertas de empleo</a>
            </div>
          </li>

          <li>
            <a href="/logout">Salir</a>
          </li>
        </ul>
        {{ Form::open(array('method'=>'POST', 'style' => 'float:right !important' ,'class'=>'navbar-form navbar-left','action' => 'searchController@find')) }}
        <div class="form-group">
          {{ Form::text('buscar','',array('class'=>'form-control', 'placeholder'=>'Busca una empresa...','required'=>'required')) }}
        </div>
        <button type="submit" class="btn btn-primary">Buscar</button>
        {{ Form::close()}}
        @else
        <ul class="nav navbar-nav">
          <li>
            <!-- <a href="#">Nosotros</a> -->
          </li>
          <li>
            <!-- <a href="#">Empresas</a> -->
          </li>
          <li>
            <!-- <a href="#">Contactanos</a> -->
          </li>
        </ul>
        @endif
      </div>
    </div>
  </nav>

  <div class="container">
   @yield('content')
 </div>

 <div style="margin-bottom:50px"></div>

<!-- <footer>
    <div class="row">
        <div class="col-lg-12">
            <p style="text-align: center; color:#D8D8D8;">Dffusion &copy; 2016</p>
        </div>
    </div>
</footer>
-->
<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/bower_components/angular/angular.min.js"></script>
<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>  
<script src="/bower_components/mdb/js/mdb.js"></script>
<script src="/bower_components/mdb/js/tether.min.js"></script>
<script src="/bower_components/mdb/js/prism.min.js"></script> 

<!-- <script src="/bower_components/photoswipe/dist/photoswipe.min.js"></script> 
  <script src="/bower_components/photoswipe/dist/photoswipe-ui-default.min.js"></script>  -->

  <script src="/js/app.js"></script>


  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.6&appId=1739540132933952";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  @yield('script')
</body>
</html>
