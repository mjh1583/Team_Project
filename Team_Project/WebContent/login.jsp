<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	
	<!-- 유효검사 -->
	<script type="text/javascript" src="./resources/js/validation_login.js"></script>
	
	<script type="text/javascript">
	
		//회원가입 버튼 누를 시 로그인 화면 join.jsp로 이동
		function goJoin() {
			location.href = "./join.jsp";
		}

	</script>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/css/login.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	<div id="wrapper">
		<div id="content">
			<%
				String error = request.getParameter("error");				/* 로그인 실패했을때 */
				if(error != null){								/* 에러발생 */
					out.println("<div class='alert alert-danger'>");
					out.println("로그인 실패입니다. 아이디와 비밀번호를 확인해주세요!");
					out.println("</div>");
				}
			%>
			<!-- 값(파라미터) 전송은 post 방식, 전송할 페이지는 loginPro.jsp -->
			<form action="./loginPro.jsp" method="post" name="loginInfo" onsubmit="return checkValue()">
				
				<!-- 아이디 -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box">
						<input type="text" id="id" name="id" class="int" maxlength="20" required />
					</span>
				</div><!-- 아이디 -->
				
				<!-- 비밀번호 -->
				<div>
					<h3 class="join_title">
						<label for="pw">비밀번호</label>
					</h3>
					<span class="box">
						<input type="text" id="pw" name="pw" class="int" maxlength="20" required />
					</span>
				</div><!-- 비밀번호 -->
				<br/>
				
				<div class="btn_Area">
					<input type="button" id="btn" class="btn btn-primary" value="로그인" onclick="checkValue()"/> &nbsp;&nbsp;&nbsp;
					<input type="button" id="btn" class="btn btn-primary" value="회원가입" onclick="goJoin()"/>
				</div>
				
			</form>
			
		</div><!-- content -->
	</div><!-- wrapper -->
	
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>