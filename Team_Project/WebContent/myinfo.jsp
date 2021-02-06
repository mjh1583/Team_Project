<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내정보</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu_header.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">내정보</h3>
		</div>
	</div>
	
	<div class="text-center">
		<div class="row">
			<div class="col-md-6">
				<p></p>
				<p><b>이름 : </b></p>
				<p><b>생년월일 : </b></p>
				<p><b>아이디 : </b></p>
				<p><b>이메일 : </b></p>	
				<p><b>주소 : </b></p>
				
				<p><a href="#" class="btn btn-info">정보수정 &raquo;</a></p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>





























