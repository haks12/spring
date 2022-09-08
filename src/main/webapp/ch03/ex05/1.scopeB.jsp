<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<ul>
	<li><%= pageContext.getAttribute("one") %></li>
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li>
	<li><%= application.getAttribute("four") %></li>
</ul>