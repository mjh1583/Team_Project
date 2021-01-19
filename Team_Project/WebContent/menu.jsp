<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<nav class="navbar navbar-expand navbar-dark bg-dark">  <!-- 네비게이션 바를 만듦 -->
	<div class="container">  <!-- container라는 클래스부터 내용을 표시함 -->
		<div class="row col-md-8">
			<a class="navbar-brand" href="./index.jsp">
           		<img src="img/logo.png" alt="Site logo">놀러가자
           	</a>
           
            <ul class="navbar-nav ml-auto">
            	<li class="nav-item">
            		<a class="nav-link active" href="#">로그인</a>
            	</li>
            	<li class="nav-item">
            		<a class="nav-link active" href="#">회원 가입</a>
            	</li>
            </ul>
		</div>
		
		<div class="row col-md-4">
			<div class="navbar-header text-center">  <!-- 네비게이션 헤더 -->
				<ul class="navbar-nav ml-auto">
		            <li class="nav-item">
		            	<a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
		            </li>
		            <li class="nav-item">
		            	<a class="nav-link" href="#">지역</a>
		            </li>
		            <li class="nav-item">
		            	<a class="nav-link" href="#">여행 가이드</a>
		            </li>
		    	</ul>
			</div>
		</div>
	</div>
</nav>