<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	
	<!-- 유효검사 -->
	<script type="text/javascript" src="./resources/js/validation_join.js"></script>
	
	<script type="text/javascript">
		
		//취소 버튼 누를 시 로그인 화면 login.jsp로 이동
		function goLogin() {
			location.href = "./login.jsp";
		}
	
	</script>
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/css/join.css">
	
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	
	<div id="wrapper">
	<div id="content">
		<%
			String error = request.getParameter("error");				/* 로그인 실패했을때 */
			if(error != null){								/* 에러발생 */
				out.println("<div class='alert alert-danger'>");
				out.println("이미 생성된 아이디 입니다.");
				out.println("</div>");
			}
		%>
		<!-- 값(파라미터) 전송은 post 방식, 전송할 페이지는 joinPro.jsp -->
		<form action="./joinPro.jsp" method="post" name="userInfo" onsubmit="return checkValue()">
			
			<!-- 아이디 -->
			<div>
				<h3 class="join_title">
					<label for="id">아이디</label>
				</h3>
				<span class="box">
					<input type="text" id="id" name="id" class="int" maxlength="20" required />
				</span>
			</div>
			
			<!-- 비밀번호 -->
			<div>
				<h3 class="join_title">
					<label for="pw">비밀번호</label>
				</h3>
				<span class="box">
					<input type="password" id="pw" name="pw" class="int" maxlength="20" required/>
				</span>
				
			</div>
			
			<!-- 비밀번호 확인 -->
			<div>
				<h3 class="join_title">
					<label for="pwcheck">비밀번호 확인</label>
				</h3>
				<span class="box">
					<input type="password" id="pwcheck" name="pwcheck" class="int" maxlength="20" required/>
				</span>
				
			</div>
			
			<!-- 이름 -->
			<div>
				<h3 class="join_title">
					<label for="name">이름</label>
				</h3>
				<span class="box">
					<input type="text" id="name" name="name" class="int" maxlength="20" required/>
				</span>
			</div>
			
			<!-- 생년월일 -->
			<div>
				<h3 class="join_title"><label for="birth">생년월일</label></h3>
				<div id = "birth_wrap">
				
				<!-- 년도 -->
				<div id="birth_yy">
					<span class="box">
						<input type="text" id="yy" name="yy" class="int" maxlength="4" placeholder="년(4자)"/>
					</span>
				</div>
				
				<!-- 월 -->
				<div id="birth_mm">
					<span class="box">
						<select id="mm" name="mm" class="sel">
							<option>월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</span>
				</div>
				
				<!-- 일 -->
				<div id="birth_dd">
					<span class="box">
						<input type="text" id="dd" name="dd" class="int" maxlength="2" placeholder="일"/>
					</span>
				</div>
				
				</div><!-- birth_wrap -->
			</div>
			
			<!-- 이메일 -->
			<div>
				<h3 class="join_title">
					<label for="email">이메일</label>
				</h3>
				<span class="box">
					<input type="text" id="email" name="email" class="int" maxlength="100" required />
				</span>
			</div>
			
			<!-- 주소 -->
			<div>
				<h3 class="join_title">
					<label for="addr">주소</label>
				</h3>
				<span class="box">
					<input type="text" id="addr" name="addr" class="int" maxlength="100" required/>
				</span>
			</div>
			<br/>
			
		<!-- 버튼 -->	
		<div class="btn_Area">
			<input type="button" id="btn" class="btn btn-primary" value="가입" onclick="checkValue()" />&nbsp;&nbsp;&nbsp;
			<input type="button" id="btnlogin" class="btn btn-secondary" value="취소" onclick="goLogin()" />
		</div>
		
		</form>
	</div><!-- content -->
	</div><!-- wrapper -->
	
	<br/><br/><br/><br/><br/><br/><br/>
	<hr>
	<jsp:include page="footer.jsp"/>

</body>
</html>
