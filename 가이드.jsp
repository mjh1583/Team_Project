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

	<jsp:include page="메뉴.jsp"/>	
	
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
			<h1 class="display-4 text-center">지역 가이드</h1>
			<div class="row" align="center">
				<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href = "불국사.jsp" class="btn btn-primary pull-right">서울</a></td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href = "" class="btn btn-primary pull-right">부산</a></td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href = "" class="btn btn-primary pull-right">대구</a></td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href = "" class="btn btn-primary pull-right">광주</a></td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href = "" class="btn btn-primary pull-right">대전</a></td>
						</tr>
					</tbody>
				</table>	
			</div>
				<%
					String[] cities = {"seoul", "busan", "daegu", "gwangju", "daejeon", "incheon", "ulsan", "jeju"};
				
					for(int i = 0; i < cities.length; i++) {
						String city = cities[i];
				%>
	
	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="resources/js/weather.js"></script>
	
</body>
</html>