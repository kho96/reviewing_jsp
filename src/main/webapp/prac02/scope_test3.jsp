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
<title>scope_test3.jsp</title>
</head>
<body>
	pageContextId = <%=pageContextId %><br> <!-- page영역의 경우 같은 페이지 내에서만 객체를 공유하기에 전달되지 않았다. -->
	requestId = <%=requestId %><br> <!-- request영역의 경우 같은 요청범위 내에서만 객체를 공유하기에 전달되지 않았다. -->
	sessionId = <%=sessionId %><br> <!-- session영역은 session내에서만 객체를 공유하기에 다른 브라우저로 요청시 전달되지 않음. -->
	applicationId = <%=applicationId %><br>
</body>
</html>