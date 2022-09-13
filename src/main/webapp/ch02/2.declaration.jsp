<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- jspService 멤버 하나를 만드는것 --%>
<%!
	public int add(int num1, int num2) {
		return num1 + num2;
	} //멤버메서드 선언
	int num1 = 1; //멤버변수 선언
%>
<%
	int num2 = 2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>