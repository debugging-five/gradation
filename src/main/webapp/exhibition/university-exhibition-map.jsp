<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>
<body>
	<div>Kakao 지도</div>
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec7072bec49713ff819fb34f956a5fc7"></script>
	<script type="text/javascript">

		window.onload = function() {
			
			var mapContainer = document.getElementById("map");
			var options = {
				center:	new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
			
			kakao.maps.load(function() {
				var map = new kakao.maps.Map(mapContainer, options);
			});	
	};		

	</script>
</body>
</html>