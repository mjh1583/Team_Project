<%@page import="kr.gov.dto.Member"%>
<%@page import="kr.gov.dao.MemberRepository"%>
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
	<%
		request.setCharacterEncoding("utf-8");
		MemberRepository mRepository = new MemberRepository();
		
		Member member = new Member();
	
		String id = (String)session.getAttribute("sessionId");
		
		member = mRepository.getUser_Byid(id);
		
		System.out.println(id);
		System.out.println(member.getUser_name());
	
	%>

	<jsp:include page="./menu_header.jsp"/>

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">내정보</h3>
		</div>
	</div>
	
	<div class="text-center">
		<div class="row">
			<div class="col-md-6">
				<p></p>
				<p><b>아이디 : <%= id %></b></p>
				<p><b>이름 : <%= member.getUser_name() %></b></p>
				<p><b>생년월일 : <%= mRepository.getUser_Byid(id).getUser_birth() %></b></p>
				<p><b>이메일 : <%= mRepository.getUser_Byid(id).getUser_email() %></b></p>	
				<p><b>주소 : <%= mRepository.getUser_Byid(id).getUser_address() %></b></p>
				
				<p><a href="updateInfo.jsp" class="btn btn-info">정보수정 &raquo;</a></p>
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	

</body>
</html>
