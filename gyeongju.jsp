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
					<h1 class="display-4 text-center">여행 가이드</h1>
					<div class="row" align="center">
					<img src="./gyeongju.jpg" align="right" alt="석굴암" width="580" height="800">
					<br>
					<h3 align="row">경주에는 여러 랜드마크가 있다.</h3> 
					<p>그중에 하나인 것은 역시 석굴암이라고 할 수 있다. 경상북도 경주시 진현동의 토함산 중턱에 있는 암자이다.<p> 
					<p>석굴은 남북국시대에 통일신라의 김대성이 만들었다. 한국을 대표하는 석굴사원으로 불교 문화재의 걸작이자 국보 제 24호. 
					현대에 그 예술성과 가치를 인정받아서 토함산 아랫자락의 불국사와 함께 1995년 유네스코 세계문화유산으로 지정되었다. 
					입장료는 2020년 성인 기준 6천 원으로 불국사와는 별도의 요금이다 </p>
					
					<h3 align="center">가는 방법</h3>
					
					<p>대중교통으로 찾아가려면 터미널이나 경주 시내에서 바로 갈 수 있는 방법은 없고 불국사까지 와서 환승해야 한다.</p>
					<p>불국사까지는 터미널이나 경주역, 시내에서 10번, 11번, 700번을 타면 된다.</p>
					<p>신경주역에서는 35분 간격으로 운행하는 700번을 이용하면 된다. 10번과 11번은 같은 노선으로 순환 방향만 다를 뿐이다 </p>
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