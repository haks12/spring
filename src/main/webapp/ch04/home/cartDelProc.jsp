<%@page import="java.util.StringTokenizer"%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();
	
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {// 카트에 물건이 있다면,
		for(String product: products)
			cart = cart.replaceFirst(product + "/", "");// 카트에 물건을 없애야 한다. empty string으로 바꾸면 된다.
		
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);// 클라이언트는 덮어쓰기 효과
	} else {// else 블럭. 선택한 물건이 없다면, redirect
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>	
<c:redirect url='cartOut.jsp'/>	