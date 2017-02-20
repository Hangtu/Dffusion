@extends('master')
@section('content')
<div ng-controller="registredCtrl">
	<div class="infinite-registred">
		<div  infinite-scroll="loadMore()" infinite-scroll-distance='0'>
			<img ng-repeat='image in images' ng-src='http://lorempixel.com/225/250/food/?@{{image}}'>
		</div>
	</div>
</div>
@stop()

@section('script')
<script src="js/controllers/registred.js"></script>
<script src="/bower_components/ngInfiniteScroll/build/ng-infinite-scroll.js"></script>
@stop()