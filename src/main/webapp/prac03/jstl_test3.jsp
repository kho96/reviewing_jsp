<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	String[] strs = {"사과", "바나나", "배"};
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_test3.jsp</title>
</head>
<body>
	<p>
		<!-- for(int v = 1; i<=10; i++){ } 에 해당한다.(for 반복문) -->
		<c:forEach var="i" begin="1" end="10">
			${i},
		</c:forEach>
	</p>
	
	<p>
		<!-- for(String s : strs){ } 에 해당한다. (고속열거문)-->
		<c:forEach items="<%=strs %>" var="s">
			${s},
		</c:forEach>
	</p>
</body>
</html>