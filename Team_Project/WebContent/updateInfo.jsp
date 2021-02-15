<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
	request.setCharacterEncoding("utf-8");
	String sessionId = (String)session.getAttribute("sessionId");
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/persondb?serverTimezone=UTC"
	driver="com.mysql.cj.jdbc.Driver"
	user="root"
	password="0217"/>
	
<!-- sql쿼리문 실행. executeQuery()기능과 유사 -->
<sql:query dataSource="${dataSource}" var="resultSet">
	select * from members where user_id = ?
	<sql:param value="<%= sessionId%>"/>
</sql:query>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원수정 - WebStore</title>
	
	
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	
</head>

<body>
	<jsp:include page="./menu_header.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 수정</h1>
		</div>
	</div>
	
	<!-- db에서 String타입으로 되어있는 데이터를 @를 기준으로 split() 사용해서 값을 잘라냄 -->
	<c:forEach var="row" items="${resultSet.rows }">

	<div class="container">
	
		<form action="./processUpdateInfo.jsp" name="userInfo" class="form-hrizontal" method="post"
				onsubmit="return checkValue()">
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input id="pw"  name="pw" type="password" class="form-control" placeholder="비밀번호" value="<c:out value='${row.user_pw }'/>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호 확인</label>
				<div class="col-sm-3">
					<input id="pwcheck"  name="pwcheck" type="password" class="form-control" placeholder="비밀번호 확인">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input id="name"  name="name" type="text" class="form-control" placeholder="이름" value="<c:out value='${row.user_name }'/>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">생일년월일</label>
				<div class="col-sm-3">
					<input id="birth"  name="birth" type="text" class="form-control" maxlength="8" placeholder="생년월일"  value="<c:out value='${row.user_birth }'/>" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input id="email"  name="email" type="text" class="form-control" placeholder="이메일" value="<c:out value='${row.user_email }'/>" >
				</div>	
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input id="addr"  name="addr" type="text" class="form-control" placeholder="주소" value="${row.user_address }">
				</div>
			</div>
			
			<div class="form-group row">				
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="수정반영" onclick="checkValue()">
					<input type="button" class="btn btn-danger" value="회원탈퇴" onclick="return deleteMemberConfirm()">
					
				</div>
			</div>
			
		</form>
		
	</div>

</c:forEach>

<script type="text/javascript" src="./resources/js/validation_updateInfo.js"></script>
	
<script type="text/javascript">
	function deleteMemberConfirm() {
		var result = confirm('정말 회원탈퇴를 하시겠습니까?');
		
		if(result){
			location.href = "deleteMember.jsp";
			alert("탈퇴되었습니다.");
		}
		else{
			
			alert("취소되었습니다.");
			return ; 
			
		}
	}
</script>

</body>
</html>