<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>놀러가자</title>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4 text-center">장소를 정해봅시다!</h1><br/><br/>
			<div class="row justify-content-md-center" align="center">
				<div class="col-md-7">
					<input name="destination" type="text" class="form-control" id="inputCity" placeholder="놀러갈 장소를 입력하세요...">
				</div>
				<div class="">
					<input type="button" class="btn btn-primary" value="검색">
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<%
				//웹사이트의 리프레쉬 기능 추가
				//response.setIntHeader("Refresh", 5);
				
				Calendar calendar = Calendar.getInstance();
				int hour = calendar.get(Calendar.HOUR_OF_DAY);
				int minute = calendar.get(Calendar.MINUTE);
				int second = calendar.get(Calendar.SECOND);
				int am_pm = calendar.get(Calendar.AM_PM);
				
				String ampm = null;
				if(am_pm == 0) {
					ampm = "오전";
				}
				else {
					ampm = "오후";
				}
				
				String connectionTime = ampm + ":" + hour + ":" + minute + ":" + second;
				
				out.println("현재 접속 시간 : " + connectionTime + "\n");
				
			%>
			<br/>
		</div>
		
		<div class="row" align="center">
			<div class="col-md-4" align="center">
				현재온도 <span class="js-weather">
					<img class="weather-img" alt="" src="${weatherIcon_src}">
				</span>
				<img alt="#" src="" class="">
			</div>
			<!-- <div class="col-md-4" align="center">
				서울<span class="js-weather"></span>
			</div>
			<div class="col-md-4" align="center">
				부산<span class="js-weather"></span>
			</div> -->
		</div>
		<div class="row" align="center">
			<!-- <div class="col-md-4" align="center">
				대전<span class="js-weather"></span>
			</div>
			<div class="col-md-4" align="center">
				대구<span class="js-weather"></span>
			</div>
			<div class="col-md-4" align="center">
				울산<span class="js-weather"></span>
			</div> -->
		</div>
		
		<hr/>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="resources/js/weather.js"></script>
</body>
</html>