<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error_page.jsp"%>
<!-- error발생시 errorPage 설정하기 -> errorPage="에러 페이지 경로" -->    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int sum = 0;
	for (int i = 1; i <= num; i++) {
		sum += i;
	}
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error_result.jsp</title>
</head>
<body>
	<h1>1부터 <%=num %>까지의 합: <%=sum %></h1>
	<a href="/prac_jsp/prac01/error_test.jsp">다시 입력하기</a>
</body>
</html>