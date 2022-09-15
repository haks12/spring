<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %><!-- 장바구니를 list로 구현 -->
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {
		List<String> cart = null; // 변수선언
		
		Object cartObj = session.getAttribute("cart"); // session에서 장바구니를 꺼낸다.
		if(cartObj == null) { // 만약 장바구니가 손에 없다면, 장바구니를 손에 넣자.
			cart = new ArrayList<>();//장바구니 생성
			session.setAttribute("cart", cart);
		} else {
			cart = (List<String>)cartObj; //casting
		}
		
		for(String product: products)
			cart.add(product); // 노트북, 마우스 순으로 장바구니에 넣는다.
	} else {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니 안을 본다 : redirect로 실행 -->