<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.invalidate();
%>
<c:redirect url='main.jsp'/>
<!-- session은 사라지고, cookie의 정보만 남아있는다. -->