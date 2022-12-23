<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include_directive.jspf" %><!-- 디렉티브 include -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actiontag_test1.jsp</title>
</head>
<body bgcolor="<%=color1%>">
	<p>color1 : <%=color1 %></p>
	<p>color2 : <%=color2 %></p>
	<p>color3 : <%=color3 %></p>
	<jsp:include page="include_action.jsp"/>
	<%-- <p>color4 : <%=color4 %></p> --%> <!-- 액션태그는 모듈처럼 작동하여 소스가 포함되는 것이 아닌 흐름을 이동시킴 -->
	<!-- 액션태그는 화면의 흐름을 이동, 디렉티브 인클루드는 소스를 붙어서 컴파일 한다. -->
	<!-- 정적인 처리를 하는 경우는 디렉티브, 동적인 화면을 보여줄 경우는 액션태그를 이용하면 된다. -->
</body>
</html>