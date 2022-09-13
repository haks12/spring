<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	if(products !=null && products.length > 0) {
		List<String> cart = new ArrayList<>(); //빈 장바구니 만든다.
		
		for(String product: products)
			cart.add(product); //노트북, 마우스 순으로 장바구니에 넣는다.
		
		session.setAttribute("cart", cart); //노트북, 마우스가 들어있는 장바구니를 세션에 넣는다.
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니 안을 본다 : redirect로 실행 -->