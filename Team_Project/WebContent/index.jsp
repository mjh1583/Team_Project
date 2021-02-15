<%@page import="java.util.Date"%>
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
	<link rel="stylesheet" href="./resources/css/calendar.css?v=<%= System.currentTimeMillis() %>">
	<link rel="stylesheet" href="./resources/css/slide.css?v=<%= System.currentTimeMillis() %>">
	
	<style type="text/css">
		.tm-banner-bg {
		    background: url(resources/img/banner.jpg) center top no-repeat;    
		    min-height: 360px;
		    position: relative;
		}	
	</style>
</head>
<body>
	<!-- 페이지를 열때마다 자동으로 캐시 삭제 -->
	<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
	%>
	
	<!-- 메뉴 부분 : 내비게이션 바 -->
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container tm-banner-bg">
		
		</div>
	</div>

	<!-- 메인페이지의 주요 내용 -->
	<!-- 1. 날씨  2. 달력 -->
	<div class="container">
		<h1 class="display-4 text-center">장소를 정해봅시다!</h1><br/>
		<form action="map.jsp" class="form-horizontal" method="post" onsubmit="return sendKeyword()" name="searchForm" role="form">
			<div class="form-group row
			">
				<div class="col-md-7">
					<input name="destination" type="text" class="form-control" id="inputCity" placeholder="놀러갈 장소를 입력하세요..." />
				</div>
				<div class="col-md-1">
					<input type="submit" class="btn btn-primary" value="검색" />
				</div>
			</div>
		</form>
	</div>
	
	<div class="container">
		<div class="text-center">
			<%
				//웹사이트의 리프레쉬 기능 추가...
				//response.setIntHeader("Refresh", 5);
				
				Calendar calendar = Calendar.getInstance();
				int hour = calendar.get(Calendar.HOUR_OF_DAY);
				int minute = calendar.get(Calendar.MINUTE);
				int second = calendar.get(Calendar.SECOND);
				int am_pm = calendar.get(Calendar.AM_PM);
				
				int thisYear = calendar.get(Calendar.YEAR);
				int thisMonth = calendar.get(Calendar.MONTH) + 1;
				
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
		
		<!-- 모든 도시 정보들을 다 가져오긴 하나 현위치를 제외하고는 전부 제주에 출력됨 -->
		<!-- 슬라이더로 한줄로 표시되게 바꾸는게 더 이쁠거같음 -->
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
					String[] major_cities = {"seoul", "daegu", "daejeon", "busan", "incheon", "ulsan", "gwangju", "jeju"};
					
					for(int i = 0; i < major_cities.length; i++) {
						String city = major_cities[i];
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
			<br/><br/>
		</div>  <!-- 날씨 -->
		
		<!-- 달력 부분 -->
		<!-- 우리나라 축제나 행사정보를 가져와서 달력에 표시하면 좋을 듯 -->
		<div class="container">
			<h1 class="display-4 text-center">이달의 행사/축제</h1><br/><br/>
			<table class="table col-md-10" id="calendar">
		        <tr>
		            <td><font size=5%; color="#B3B6B3"><label onclick="beforem()" id="before" ></label></font></td>
		            <td class="display-4" colspan="5" align="center" id="yearmonth"></td>
		            <td><font size=5%; color="#B3B6B3"><label onclick="nextm()" id="next"></label></font></td>
		        </tr>
		        <tr>
		            <td align="center"> <font color="#FF9090">일</font></td>
		            <td align="center"> 월 </td>
		            <td align="center"> 화 </td>
		            <td align="center"> 수 </td>
		            <td align="center"> 목 </td>
		            <td align="center"> 금 </td>
		            <td align="center"><font color=#7ED5E4>토</font></td>
		        </tr>
    		</table>
			<br/><br/>
		</div>  <!-- 달력 + 축제 -->
		
		<div class="container" align="center">
			<div id="slider" class="col-md-10" style="width: 100%; height: 600px;">
			    <div class="slider-item">
			    	<img src="./resources/img/tm-img-01.jpg" class="slide-img">
			    	<div class="">
			    		<h4 class="display-5 text-center">월미도 불꽃 축제</h4>
	    				<p>행사 시작일 : 2021년 02월 01일</p>
						<p>행사 종료일 : 2021년 12월 31일</p>
			    	</div>
			    </div>
			    <div class="slider-item">
			    	<img src="./resources/img/tm-img-02.jpg">
			    	<div>
			    		<h4 class="display-5 text-center">광주비엔날레</h4>
	    				<p>행사 시작일 : 2021년 04월 01일</p>
						<p>행사 종료일 : 2021년 05월 09일</p>
			    	</div>
			    </div>
			    <div class="slider-item">
			    	<img src="./resources/img/tm-img-03.jpg">
			    	<div>
			    		<h4 class="display-5 text-center">K-일러스트레이션페어 서울</h4>
	    				<p>행사 시작일 : 2021년 04월 08일</p>
						<p>행사 종료일 : 2021년 04월 11일</p>
			    	</div>
			    </div>
			    <div class="slider-item">
			    	<img src="./resources/img/tm-img-04.jpg">
					<div>
						<h4 class="display-5 text-center">정조대왕 능행차 공동재현</h4>
	    				<p>행사 시작일 : 2021년 04월 24일</p>
						<p>행사 종료일 : 2021년 04월 25일</p>
					</div>
			    </div>
			    <div class="slider-item">
			    	<img src="./resources/img/tm-img-05.jpg">
			    	<div>	
			    		<h4 class="display-5 text-center">부소산 봄 나들이 축제</h4>
   						<p> 행사 시작일 : 2021년 04월 24일</p>
						<p>행사 종료일 : 2021년 04월 25일</p>
			    	</div>
			    </div>
			</div>
		</div>
		
		<!-- 여행 가이드 섹션 -->
		<!-- 클릭하면 여행 가이드의 해당 페이지로 가도록 함 -->
		<div class="container text-center">
			<h1 class="display-4 text-center">여행 가이드</h1><br/><br/>
			<table class="table col-md-12">
				<%
					String[] travel_cities = {"seoul", "gwangju", "gyeongju", "daegu", "busan"};
					
					for(int i = 0; i < travel_cities.length; i++) {
						String city = travel_cities[i];
				%>
				<tr class="col-md-12">
					<td><a href="./local/<%= city %>.jsp"><img style="height: 300px;" alt="" src="./local/<%= city %>.jpg" class="col-md-4"></a></td>
					<td></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
		
	</div>
	
	<!-- 푸터 부분 -->
	<hr/>
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="resources/js/weather.js?v=<%= System.currentTimeMillis() %>"></script>
	<script type="text/javascript" src="resources/js/calendar.js?v=<%= System.currentTimeMillis() %>"></script>
	<script type="text/javascript" src="resources/js/slide.js?v=<%= System.currentTimeMillis() %>"></script>
	
	<script type="text/javascript">
		function sendKeyword() {
			if(!document.searchForm.destination.value) {
				alert("목적지를 입력하세요!");
				return false;
			}
		}
	</script>
</body>
</html>