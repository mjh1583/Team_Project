<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8"); 
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 처리</title>
	
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/loginPro.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">                        <!-- 아이디 출력 -->
			<h1 class="display-3"><font color="blue"></font>님 환영합니다!</h1>
		</div>
	</div>
	
	<!-- DB 연동 후 출력할 예정 -->
	
	<div id="wrapper">
		<div id="content">
			<br/>
			<br/>
			<!-- 아이디 -->
			<div>
				<h2 class="display-6"><font color="blue">[]</font>님이 로그인 하셨습니다.</h2>   <!-- 아이디 -->
			</div><!-- 아이디 -->
			<br/>
			<br/>
			
			<!-- 버튼 -->
			<!-- 확인 버튼 클릭시 메인페이지로 이동 -->
			<div class="btn_Area">
				<a href="./index.jsp" id="btn" class="btn btn-primary" > &raquo; 메인 페이지로 이동</a>&nbsp;&nbsp;&nbsp;
				<a href="./index.jsp" id="btn_logout" class="btn btn-secondary">로그아웃</a>   <!-- 로그아웃 버튼 : 메인 페이지로 이동 -->
			</div>
			
		</div><!-- content -->
	</div><!-- wrapper -->
	
	<hr>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>