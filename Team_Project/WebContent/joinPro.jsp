<%@page import="kr.gov.dao.MemberRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
    
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String yy = request.getParameter("yy");
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
	String email = request.getParameter("email");
	String address = request.getParameter("addr");
	
	String birth = yy+mm+dd ;
	
	MemberRepository mRepository = new MemberRepository();
	
	if(mRepository.getUser_Byid(id) == null){
		mRepository.AddNewMember(id, pw, name, birth, email, address);
		response.sendRedirect("mypage.jsp");             /* 로그인된 상태로 메인화면으로 갈수 있게 설정 */
	}else {
		response.sendRedirect("join.jsp?error=1");
	}