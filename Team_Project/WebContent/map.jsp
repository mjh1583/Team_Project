<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>놀러가자</title>
	
	<style type="text/css">
		#menu_wrap {position: absolute; top: 375px; right: 130px; bottom: -39px; width: 250px; margin: 10px 0 30px 10xp; padding: 5px; 
					overflow-y: auto; background: rgba(255, 255, 255, 0.7); z-index: 1; font-size: 12px; border-radius: 10px;}
		.bg_white {background: #fff;}
		#menu_wrap hr {display: block; height: 1px; border: 0; border-top: 2px solid #5F5F5F; margin: 3px 0;}
		#menu_wrap .option{text-align: center;}
		#menu_wrap .option p {margin: 10px 0;}  
		#menu_wrap .option button {margin-left: 5px;}
		
		#placesList li {list-style: none;}
		#placesList .item {position: relative; border-bottom: 1px solid #888; overflow: hidden; cursor: pointer; min-height: 65px;}
		#placesList .item span {display: block; margin-top: 4px;}
		#placesList .item h5, #placesList .item .info {text-overflow: ellipsis; overflow: hidden; white-space: nowrap; 
														font-family:'Malgun Gothic',dotum,'돋움',sans-serif; font-size:12px;}
		#placesList .item .info{padding: 10px 0 10px 55px;}
		#placesList .info .gray {color: #8a8a8a;}
		#placesList .info .jibun {padding-left: 26px; background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#placesList .info .tel {color: #009900;}
		#placesList .item .markerbg {float: left; position: absolute; width: 36px; height:37px; margin: 10px 0 0 10px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
		#placesList .item .marker_1 {background-position: 0 -10px;}
		#placesList .item .marker_2 {background-position: 0 -56px;}
		#placesList .item .marker_3 {background-position: 0 -102px}
		#placesList .item .marker_4 {background-position: 0 -148px;}
		#placesList .item .marker_5 {background-position: 0 -194px;}
		#placesList .item .marker_6 {background-position: 0 -240px;}
		#placesList .item .marker_7 {background-position: 0 -286px;}
		#placesList .item .marker_8 {background-position: 0 -332px;}
		#placesList .item .marker_9 {background-position: 0 -378px;}
		#placesList .item .marker_10 {background-position: 0 -423px;}
		#placesList .item .marker_11 {background-position: 0 -470px;}
		#placesList .item .marker_12 {background-position: 0 -516px;}
		#placesList .item .marker_13 {background-position: 0 -562px;}
		#placesList .item .marker_14 {background-position: 0 -608px;}
		#placesList .item .marker_15 {background-position: 0 -654px;}
	</style>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">

</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4 text-center">원하는 지역을 찾아봅시다.</h1><br/><br/>
			<form onsubmit="searchPlaces(); return false;">
				<div class="row justify-content-md-center" align="center">
            		<div class="col-md-7">
          		  		<input type="text" value="이태원 맛집" class="form-control" id="keyword" placeholder="놀러갈 장소를 입력하세요.">
         	      	</div>
       		      	<div class="">
                		<button type="submit" class="btn btn-primary">검색하기</button>
          			</div>
          		</div>
           		<div id="menu_wrap" class="bg_white">
					<div class="option">
				
						<ul id="placesList"></ul>
    					<div id="pagination"></div>
    				</div>
    			</div>
        	</form>
        	<br/><br/>
        	
        	<jsp:include page="map.html"/>
        </div>    		
    </div>
    		 

	<jsp:include page="footer.jsp"/>
</body>
</html>