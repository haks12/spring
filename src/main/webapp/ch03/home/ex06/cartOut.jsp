<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>진열대</a>

<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart"); //이미 만들어진 장바구니를 불러옴
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj; //add 메서드를 쓰기 위해 List<String>타입으로 casting한다
		if(cart.size() > 0) { //카트에 물건이 있는지 확인
%>
			<!-- 삭제기능 폼 -->
			<form action='cartDelProc.jsp' method='post'>
				<ul>
<%
					for(String product: cart) { // 카트에 있는 물건을 꺼낸다
%>					
						<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/>
<%
					}
%>						
				</ul>
				<button type='submit'>빼기</button>
			</form>
<%
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg);
		} else out.println("물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>