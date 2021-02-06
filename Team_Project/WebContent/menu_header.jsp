<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%request.setCharacterEncoding("utf-8"); %>
 
<nav class="navbar navbar-expand navbar-dark bg-dark"> <!-- 네비게이션 바를 만듦 -->
	<div class="container">                            <!-- container라는 클래스부터 내용을 표시함. -->
		<div class="navbar-header">						<!-- 네비게이션 헤더 -->
			<a class="navbar-brand" href="./welcome.jsp">
				<img src="./resources/images/logo.png" alt="Site logo">	
					놀러가자(home)
			</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
   		 		<ul class="navbar-nav mr-auto">
			      <li class="nav-item">
			        <a class="nav-link" href="#">내정보</a>
			      </li>&nbsp;&nbsp;&nbsp;
			      <li class="nav-item">
			        <a class="nav-link" href="#">즐겨찾기</a>
			      </li>&nbsp;&nbsp;&nbsp;
			      <li class="nav-item">
			        <a class="nav-link" href="#">코스</a>
			      </li>&nbsp;&nbsp;&nbsp;
			      <li class="nav-item">
			        <a class="nav-link" href="#">내기록</a>
			      </li>&nbsp;&nbsp;&nbsp;
			      <li class="nav-item">
			        <a class="nav-link" href="#">관광정보 수정/신규 요청</a>
			      </li>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <li class="nav-item">
			        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">검색</a>
			      </li>
   		 		</ul>
			    <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form>
  			</div>
		</div>
	</div>
</nav>