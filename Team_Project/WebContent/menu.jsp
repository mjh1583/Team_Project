<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<nav class="navbar navbar-expand navbar-dark bg-dark">  <!-- 네비게이션 바를 만듦 -->
	<div class="container">  <!-- container라는 클래스부터 내용을 표시함 -->
		<a class="navbar-brand justify-content-start" href="${pageContext.request.contextPath}/index.jsp">
           		<img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="Site logo">놀러가자
        </a>
		<div class="navbar-header">  <!-- 네비게이션 헤더 -->
            <ul class="navbar-nav ml-auto justify-content-end">
            	<li class="nav-item">
            		<a class="nav-link active" href="${pageContext.request.contextPath}/login.jsp">로그인</a>
            	</li>
            	<li class="nav-item">
            		<a class="nav-link active" href="${pageContext.request.contextPath}/join.jsp">회원 가입</a>
            	</li>
            </ul>
            <ul class="navbar-nav ml-auto">
            	<li class="nav-item">
	            	<a class="nav-link active" href="${pageContext.request.contextPath}/index.jsp">Home <span class="sr-only">(current)</span></a>
	            </li>
	            <li class="nav-item">
	            	<a class="nav-link active" href="${pageContext.request.contextPath}/map.jsp">지역</a>
	            </li>
	            <li class="nav-item">
	            	<a class="nav-link active" href="${pageContext.request.contextPath}/guide.jsp">여행 가이드</a>
	            </li>
            </ul>
		</div>
	</div>
</nav>