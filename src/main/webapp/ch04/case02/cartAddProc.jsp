<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	if(products != null) {
		String cart = "";// 쿠키의 데이터타입은 text, 카트의 데이터타입은 String
		for(String product: products) cart += product + "/"; // '카트에 물건을 담는다' 를 +=로 표현

		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7); // para 초 단위, expression을 쓰자.
		response.addCookie(cookie);// response 안에 집어넣자.
	}
%>
<c:redirect url='cartOut.jsp'/>