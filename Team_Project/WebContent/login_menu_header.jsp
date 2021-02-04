<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<nav class="navbar navbar-expand navbar-dark bg-dark">  <!-- 네비게이션 바를 만듦 -->
	<div class="container">  <!-- container라는 클래스부터 내용을 표시함 -->
		<a class="navbar-brand justify-content-start" href="./index.jsp">
           		<img src="./resources/images/logo.png" alt="Site logo">	놀러가자
        </a>
		<div class="navbar-header">  <!-- 네비게이션 헤더 -->
            <ul class="navbar-nav ml-auto justify-content-end">
            	<li class="nav-item">
            		<a class="nav-link active" href="login.jsp">로그인</a>
            	</li>
            	<li class="nav-item">
            		<a class="nav-link active" href="join.jsp">회원 가입</a>
            	</li>
            </ul>
            <ul class="navbar-nav ml-auto">
            	<li class="nav-item">
	            	<a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	            </li>
	            <li class="nav-item">
	            	<a class="nav-link active" href="#">지역</a>
	            </li>
	            <li class="nav-item">
	            	<a class="nav-link active" href="#">여행 가이드</a>
	            </li>
            </ul>
		</div>
	</div>
</nav>