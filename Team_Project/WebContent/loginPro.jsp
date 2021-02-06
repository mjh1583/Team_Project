<%@page import="kr.gov.dao.MemberRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
    
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	
	MemberRepository mRepository = new MemberRepository();
	
	if(mRepository.getUser_Byid(id) != null){
		response.sendRedirect("mypage.jsp");              /* 로그인된 상태로 메인화면으로 갈수 있게 설정 (세션에 값 저장)*/
	}
	else{
		response.sendRedirect("login.jsp?error=1");
	}

%>