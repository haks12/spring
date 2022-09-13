<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- directive --%>
<% // scriptlet 여기는 javacode 영역이야
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2> <!-- scriptlet 바깥에서는 html언어로 -->
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression -->