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

	<jsp:include page="menu.jsp"/>	

		<div class="container">
			<h1 class="display-4 text-center">지역 가이드</h1>
			<div class="row" align="center">
				<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
					<thead>
						
					</thead>
					<tbody>
						<tr>
							<td><a href = "seoul.jsp" class="btn btn-primary pull-right">서울</a></td>
						</tr>
						<tr>
							<td><a href = "busan.jsp" class="btn btn-primary pull-right">부산</a></td>
						</tr>
						<tr>
							<td><a href = "daegu.jsp" class="btn btn-primary pull-right">대구</a></td>
						</tr>
						<tr>
							<td><a href = "gwangju.jsp" class="btn btn-primary pull-right">광주</a></td>
						</tr>
						<tr>
							<td><a href = "gyeongju.jsp" class="btn btn-primary pull-right">경주</a></td>
						</tr>
					</tbody>
				</table>	
			</div>
		</div>
		
		<div class="text-center">
			<footer class="tm-container-outer">
				<p class="mb-0">Copyright © <span class="tm-current-year">2021</span> 
					구미 빅데이터 교육과정 2조
				</p>
		    </footer>
		</div>
</body>
</html>