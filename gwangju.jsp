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
	
	<title>전남도청</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>

	<jsp:include page="menu.jsp"/>
		
		<section>
			<div class="container">
					<h1 class="display-4 text-center">여행 가이드</h1>
					<th colspan="1"><a href="즐겨찾기" class="btn btn-primary">즐겨찾기</a></th>
					<div class="row" align="center">
					<img src="./gwangju.jpg" align="right" alt="구전남도청" width="773" height="580">
					<br>
					<h3 align="center">5·18 광주 민주화 운동의 마지막이었던 광주 재진입 작전으로 인한 최후의 전투가 벌어진곳이다.</h3>
					
					<h2>가는 방법</h2>
					<p>광주종합버스터미널에서 첨담09 버스를 타고 30분 정도 가면 도착한다. </p>
				</div>
			</div>
			<table>
				<body>
					<td colspan="1"><a href="즐겨찾기"  align="left" class="btn btn-primary">수정요청</a></td>
				</body>
			</table>
		</section>
	
	
		<div class="text-center">
			<footer class="tm-container-outer">
				<p class="mb-0">Copyright © <span class="tm-current-year">2021</span> 
					구미 빅데이터 교육과정 2조
				</p>
		    </footer>
		</div>
</body>
</html>