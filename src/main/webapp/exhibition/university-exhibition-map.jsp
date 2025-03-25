<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
  <h1>kakaoMap</h1>
  <div id="map" style="width:500px;height:400px;"></div>
	// 기본적인 맵 크기를 정하는 부분 
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=이 곳에 appkey를 적어주세요."></script>
  <script>
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(33.450701, 126.570667),
			// 처음 보일 때의 좌표
      level: 3
    };

    var map = new kakao.maps.Map(container, options);
  </script>

</body>

</body>
</html>