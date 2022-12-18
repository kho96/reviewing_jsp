<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageContextId = (String)pageContext.getAttribute("pageContextId"); 
	String requestId = (String)request.getAttribute("requestId");
	String sessionId = (String)session.getAttribute("sessionId");
	String applicationId = (String)application.getAttribute("applicationId"); 
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope_test2.jsp</title>
</head>
<body>
	pageContextId = <%=pageContextId %><br> <!-- pageContext의 경우 같은 페이지 내에서만 객체를 공유하기에 전달되지 않았다 -->
	requestId = <%=requestId %><br>
	sessionId = <%=sessionId %><br>
	applicationId = <%=applicationId %><br>
	<a href="scope_test3.jsp">다음 페이지로 redirect</a>
</body>
</html>