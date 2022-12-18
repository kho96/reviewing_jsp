<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="${param.id}"/> 
<c:set var="pwd" value="${param.pwd}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_login.jsp</title>
</head>
<body>
	<c:if test="${id eq 'admin' and pwd eq '1234'}"> <%-- c:if는 else가 존재하지 않음. 사용은 if와 동일함. --%>
		<h1>관리자 계정으로 접속</h1>
	</c:if>
	<c:if test="${empty id or empty pwd }">
		<h1>로그인 오류</h1>
	</c:if>
	<c:if test="${!empty id and !empty pwd }">
		<h1>${id}님 접속 환영합니다.</h1>
	</c:if>
	<a href="/prac_jsp/prac03/jstl_test1.jsp">돌아가기</a>
</body>
</html>