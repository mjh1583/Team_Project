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
	
	<style type="text/css">
		
		/* 레이아웃 틀 */
		html{
			height: 100%;		
		}
		
		body{
			margin: 0;
			height: 100%;
			background: #f5f6f7;
		}
		
		#wrapper{
			position: relative;
			height: 100%
		}
		
		#content{
			position: absolute;
			left: 50%;
			transform: translate(-50%);
			width: 460px;
		}
		
		/* 출력폼 */
		
		h3{
			margin: 19px 0px 8px;
			font-size: 14px;
			font-weight: 700;
		}
		
		.box{
			display: block;
			width: 100%;
			height: 51px;
			border: solid 1px #dadada;
			padding: 10px 14px 10px 14px;
			box-sizing: border-box;
			background: #fff;
			position: relative;
		}
		
		.int{
			display: block;
			position: relative;
			width: 100%;
			height: 29px;
			border: none;
			background: #fff;
			font-size: 15px;
		}
		
		/* 버튼 */
		
		.btn_Area{
			text-align: center;
		}
		
		#btn{
			width: 50%;
			padding: 11px 0px 7px;
			border: 0px;
			cursor: pointer;
			font-size: 20px;
			font-weight: 400;
		}
	
		#btn_logout{
			width: 30%;
			padding: 11px 0px 7px;
			border: 0px;
			cursor: pointer;
			font-size: 20px;
			font-weight: 400;
		} 
		
	</style>
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><font color="blue"></font>님 환영합니다!</h1>
		</div>
	</div>
	
	<!-- DB 연동 후 출력할 예정 -->
	
	<div id="wrapper">
		<div id="content">
			<!-- 아이디 -->
			<div>
				<h3 class="loginPro_title">
					<label for="id">아이디</label>
				</h3>
				<span class="box">
					<p class="int"></p>
				</span>
			</div><!-- 아이디 -->
			
			<!-- 비밀번호 -->
			<div>
				<h3 class="logininPro_title">
					<label for="pw">비밀번호</label>
				</h3>
				<span class="box">
					<p class="int"></p>
				</span>
			</div><!-- 비밀번호 -->
			<br/>
			
			<!-- 버튼 -->
			<!-- 확인 버튼 클릭시 메인페이지로 이동 -->
			<div class="btn_Area">
				<a href="./index.jsp" id="btn" class="btn btn-primary" > &raquo; 메인 페이지로 이동</a>&nbsp;&nbsp;&nbsp;
				<a href="./logout.jsp" id="btn_logout" class="btn btn-secondary">로그아웃</a>   <!-- 로그아웃 버튼 -->
			</div>
			
		</div><!-- content -->
	</div><!-- wrapper -->
	
	<hr>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>