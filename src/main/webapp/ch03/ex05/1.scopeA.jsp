<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one","페이지");//현재실행되는페이지를 나타내는 객제
	request.setAttribute("two", "리퀘스트");//response가 client 가기 전 까지 존재
	session.setAttribute("three", "세션");//client server 사이 연결 객체
	application.setAttribute("four", "애플리케이션");//tomcat이 살아있는 동안 존재
%>
<c:redirect url='1.scopeB.jsp'/>