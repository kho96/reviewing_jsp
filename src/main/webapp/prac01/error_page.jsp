<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!-- 설정된 errorPage인 경우 -> isErrorPage="true" -->
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error_page.jsp</title>
</head>
<body>
	<h1>잘못 입력하셨습니다.</h1>
	<a href="/prac_jsp/prac01/error_test.jsp">다시 입력하기</a>
	
	<!-- exception 내장객체를 사용할 수 있다.  -->
<%-- 	<%=exception.getMessage() %> --%>
<%-- 	<%=exception.printStackTrace() %> --%>
</body>
</html>