<%@ page import="kr.gov.dao.MemberRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
	request.setCharacterEncoding("utf-8");
 
 	String id = (String)session.getAttribute("sessionId");
 	String pw = request.getParameter("pw");
 	String name = request.getParameter("name");
 	String birth = request.getParameter("birth");
 	String email = request.getParameter("email");
 	String addr = request.getParameter("addr");
 	
	MemberRepository mRepository = new MemberRepository();
	
	mRepository.UpdateNewMember(pw, name, birth, email, addr, id);
	
	session.setAttribute("sessionId", id);
	
	response.sendRedirect("myinfo.jsp");
 %>
 
 
