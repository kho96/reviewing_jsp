<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl? JSP 코드를 관리하는 라이브러리로서, JSP의 가독성이 좋아진다.  -->
<!-- 사용하고자 하는 태그를 올려야한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core태그 -->  
<c:set var="id" value="${param.id}"/> <!-- 변수로 설정, var="변수명", value="값" -->
<c:set var="pwd" value="${param.pwd}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_login.jsp</title>
</head>
<body>

	<c:choose> <%-- switch ~ case문과 비슷함. (when과 세트) --%>
		<c:when test="${id eq 'admin' and pwd eq '1234'}">  <%-- case 문에 해당함 --%>
			<h1>로그인 성공</h1>
			<c:out value="${id}님 환영합니다."/><br> <%-- out.write 와 같다. --%>
		</c:when>
		<c:when test="${empty id or empty pwd}">
			<h1>모든 항목을 입력하세요.</h1>
		</c:when>
		<c:otherwise> <%-- else와 비슷함. --%>
			<h1>로그인 실패</h1>
		</c:otherwise>
	</c:choose>
	<a href="/prac_jsp/prac03/jstl_test_core.jsp">돌아가기</a>
</body>
</html>