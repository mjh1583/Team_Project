<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입처리</title>
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/joinPro.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">                          <!-- 이름 출력 -->
			<h1 class="display-3"><font color="blue"></font>님 가입을 축하드립니다!</h1>
			<br/>
			<h5>회원가입 정보를 확인하세요.</h5>
		</div>
	</div>
	
	<!-- DB 연동 후 출력할 예정 -->
	
	<div id="wrapper">
		<div id="content">
			<%-- MemberDTO에서 입력된 값을 출력한다. --%>
			
			<!-- 아이디 -->
			<div>
				<h3 class="joinPro_title">
					<label for="id">아이디</label>
				</h3>
				<span class="box">
					<p class="int"></p>  <!-- 아이디 출력 -->
				</span>
			</div><!-- 아이디 -->
			
			<!-- 비밀번호 -->
			<div>
				<h3 class="joinPro_title">
					<label for="pw">비밀번호</label>
				</h3>
				<span class="box">
					<p class="int"></p>  <!-- 비밀번호 출력 -->
				</span>
			</div><!-- 비밀번호 -->
			
			<!-- 이름 -->
			<div>
				<h3 class="joinPro_title">
					<label for="name">이름</label>
				</h3>
				<span class="box">
					<p class="int"></p>  <!-- 이름 출력 -->
				</span>
			</div><!-- 이름 -->
			
			<!-- 생년월일 -->
			<div>
				<h3 class="joinPro_title">
					<label for="birth">생년월일</label>
				</h3>
				<span class="box">  <!-- 생년월일 출력 -->
					<p class="int">년 &nbsp; 월 &nbsp;   
					일</p>
				</span>
			</div><!-- 생년월일 -->
			
			<!-- 이메일 -->
			<div>
				<h3 class="joinPro_title">
					<label for="email">이메일</label>
				</h3>
				<span class="box">
					<p class="int"></p>   <!-- 이메일 출력 -->
				</span>
			</div><!-- 이메일 -->
			
			<!-- 주소 -->
			<div>
				<h3 class="joinPro_title">
					<label for="addr">주소</label>
				</h3>
				<span class="box">
					<p class="int"></p>   <!-- 주소 출력 -->
				</span>
			</div><!-- 주소 -->
			
			<br/>
			<!-- 버튼 -->
			<div class="btn_Area">
				<input type="button" id="btn" class="btn btn-primary" value="확인" onclick="goLogin()"/>
			</div><!-- 버튼 -->
			
		</div><!-- content -->
	</div><!-- wrapper -->
	
	<br/><br/>
	<hr>
	<jsp:include page="footer.jsp"/>
	
	
	<!-- ====================================================================================== -->
	
	
	<!-- 확인 클릭시 로그인 화면 login.jsp로 페이지 이동 -->
	<script type="text/javascript">
		function goLogin() {
			location.href = "./login.jsp"
		}
	</script>
	
</body>
</html>


