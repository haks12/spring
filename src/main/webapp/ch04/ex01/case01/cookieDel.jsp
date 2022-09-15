<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", ""); // 나이를 삭제하고 싶다. new 쿠키 만들기
	cookie.setMaxAge(0); // 최대값설정 0이상이면 바로 없어진다.
	
	response.addCookie(cookie);
%>