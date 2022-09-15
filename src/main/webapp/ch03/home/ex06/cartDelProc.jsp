<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product"); //cart에 담긴 목록을 가져온다
	Object cartObj = session.getAttribute("cart");// 장바구니 챙기자
	
	if(cartObj != null) {// 카트가 있는지 확인 (비정상적 접근 먼저 확인)
		List<String> cart = (List<String>)cartObj; // 카트가 있다면, list
		
		if(products != null && products.length > 0) {// '빼겠다고 하는 물건이 있으면' 을 코드로 표현
			for(String product: products)
				cart.remove(product); // 물건 지우기
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/> <!-- set은 atr, attribute를 만들기위한 액션 -->			
<%			
		}
	} else { // 장바구니가 없는 경우 attribute msg
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>			
<c:redirect url='cartOut.jsp'> <!-- 장바구니 유무와 상관없이 cartout으로 돌아가야 한다. -->
	<c:param name='msg' value='${msg}'/> <!-- 장바구니 유무와 상관없이 cartout으로 돌아가야 한다./ msg는 위 set var의 attribute값 -->
</c:redirect>
<!-- del이 끝나면 cartout으로 돌아와야 한다. -->