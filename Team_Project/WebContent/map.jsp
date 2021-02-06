<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>놀러가자</title>
	
	<link rel="stylesheet" href="./resources/css/mapJSP.css">
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
          		  		<input type="text" class="form-control" id="keyword" placeholder="놀러갈 장소를 입력하세요.">	<!-- value="이태원 맛집" -->
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
    <br/><br/>
    		 
	<jsp:include page="footer.jsp"/>
</body>
</html>