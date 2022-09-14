<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href = 'main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();
	
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/"); // st안에는 노트북, 마우스가 들어있다.
			while(st.hasMoreTokens()) // token이 있는지 확인
				cart.add(st.nextToken());
		}
	}
	
	if(cart.size() > 0) { // 장바구니에 물건있는지 확인
%>
		<ul>
<%
			for(String product: cart) {
%>
				<li><%= product %></li>
<%
			}
%>		
		</ul>
<%
	} else out.println("물건이 없습니다."); // 물건이 없으면 출력
%>