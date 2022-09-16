<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>메인</a>
<h3>장바구니</h3>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();
	
	if(cart != "") {
		StringTokenizer products = new StringTokenizer(cart, "/");
%>
		<form action='cartDelProc.jsp' method='post'>
			<ul>
<%
				String product = "";
				while(products.hasMoreTokens()) {
					product = products.nextToken();
%>
					<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/>// 물건 하나를 꺼내면 해당 li를 만든다.
<%				
				}
%>			
			</ul>
			<button type='submit'>빼기</button>
		</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);// 에러메세지를 tomcat으로 출력
	} else out.println("장바구니에 물건이 없습니다.");
%>