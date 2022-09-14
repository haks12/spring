<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", "34"); //나이를 34로 바꾸고싶다? age 쿠키 만든다.
	response.addCookie(cookie); // 쿠키를 바꾼다.	
%>