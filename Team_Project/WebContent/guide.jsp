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
	<jsp:include page="./menu.jsp"/>	

		<div class="container">
			<h1 class="display-4 text-center">여행 가이드</h1>
			<div class="row" align="center">
				<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
					<thead>
						
					</thead>
					
					<h3>지역별 여행 가이드</h3>
					<button>즐겨찾기</button>
				<tbody>
					<ul>
							<td colspan="2"><a href = "./local/seoul.jsp" class="btn btn-primary">서울</a></td>
							<td colspan="2"><a href = "./local/busan.jsp" class="btn btn-primary">부산</a></td>
							<td colspan="2" ><a href = "./local/daegu.jsp" class="btn btn-primary">대구</a></td>
							<td colspan="2" ><a href = "./local/gwangju.jsp" class="btn btn-primary">광주</a></td>
							<td colspan="2"><a href = "./local/gyeongju.jsp" class="btn btn-primary">경주</a></td>
					</ul>
					
				</tbody>
				
				</table>	
			</div>
		</div>
		
		<table border="1" align="center">
			<td>
				<h3>축제 가이드</h3>
					<button>즐겨찾기</button>
			</td>
		<tbody>
			<ul>
				<td colspan="1"><a href = "./local/theme1.jsp" class="btn btn-primary">월미도 불꽃축제</a></td>
				<td colspan="1"><a href = "./local/theme2.jsp" class="btn btn-primary">광주비엔날레</a></td>
				<td colspan="1"><a href = "./local/theme3.jsp" class="btn btn-primary">K-일러스트레이션페어 서울</a></td>
				<td colspan="1"><a href = "./local/theme4.jsp" class="btn btn-primary">정조대왕 능행차 공동재현</a></td>
				<td colspan="1"><a href = "./local/theme5.jsp" class="btn btn-primary">부소산 봄 나들이 축제</a></td>
			</ul>
		</tbody>
		</table>
		
		<table>
				<button>수정요청</button>
		</table>

	<div class="text-center">
		<footer class="tm-container-outer">
			<p class="mb-0">Copyright © <span class="tm-current-year">2021</span> 
				구미 빅데이터 교육과정 2조
			</p>
		</footer>
	</div>
</body>
</html>