<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- 캐시 삭제 -->
	<meta http-equiv="Cache-Control" content="no-cache"/>
	<meta http-equiv="Expires" content="0"/>
	<meta http-equiv="Pragma" content="no-cache"/>

	<title>놀러가자</title>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	
</head>
<body>
	<!-- 페이지를 열때마다 자동으로 캐시 삭제 -->
	<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
	%>

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
				//웹사이트의 리프레쉬 기능 추가....
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
		
		<!-- 반복문으로 각 지역의 날씨 정보를 페이지에 구현하고 싶은데 어떻게 해야할지 모르겠음 -->
		<!-- 모든 도시 정보들을 다 가져오긴 하나 현위치를 제외하고는 전부 제주에 출력됨 -->
		<!-- 이유는 모르겠음 -->
		<div class="container">
			<h1 class="display-4 text-center">주요 지역의 날씨</h1>
			<div class="row" align="center">
				<div class="col-md-4" align="center">
					<div class="weather-data">
						<h1 class="location" id="city"></h1>
					</div>
					<div class="weather-temp">
						<div class="current-temp">현재 온도 : </div>
						<div class="icon"></div>
						<div class="feels-like">체감 온도 : </div>
						<div class="max-temp">최고 온도 : </div>
						<div class="min-temp">최저 온도 : </div>
						<div class="weather-status">날씨 : </div>
					</div>
				</div>
				<%
					String[] cities = {"seoul", "daegu", "daejeon", "busan", "incheon", "ulsan", "gwangju", "jeju"};
					
					for(int i = 0; i < cities.length; i++) {
						String city = cities[i];
				%>
					<div class="col-md-4" align="center">
						<div class="weather-data">
							<h1 class="<%= city %>" id="city"><%= city %></h1>
						</div>
						<div class="weather-temp">
							<div class="<%= city %>_current-temp">현재 온도 : </div>
							<div class="<%= city %>_icon"></div>
							<div class="<%= city %>_feels-like">체감 온도 : </div>
							<div class="<%= city %>_max-temp">최고 온도 : </div>
							<div class="<%= city %>_min-temp">최저 온도 : </div>
							<div class="<%= city %>_weather-status">날씨 : </div>
						</div>				
					</div>
				<%
					}
				%>
			</div>
			<hr/>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="resources/js/weather.js"></script>
	
</body>
</html>