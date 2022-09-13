<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");//서버 내에서 A에서 B로 이동한다. 이 내용은 include와 공통점
	dispatcher.forward(request, response);
%>
<!-- 차이점: reponse A 하나만 만든다./ include: A와 B 같이 만든다. -->