<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Formatting 태그를 사용하려면 taglib를 등록해야함  -->
<!-- fmt 태그? 국제화/형식화 하는데에 사용(국제화 된 웹 사이트에서 텍스트, 시간, 날짜 및 숫자를 표시하고 형식화) -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_test5_fmt.jsp</title>
</head>
<body>
	<c:set var="price" value="1000000000"/>
	
	<!-- formatNumber : 사용자 지정 형식 숫자   -->
	<fmt:formatNumber var="priceNumber" value="${price}" type="number"/>
	<i>test1 : </i>${priceNumber }<br>
    <!-- 통화(돈) 표현, type="currency" currencySymbol="통화단위"-->
	<i>test2 : </i><fmt:formatNumber type="currency" currencySymbol="￦" value="${price}" groupingUsed="true"/><br>
	<!-- 퍼센트 표현, type="percent" groupingUsed="false" : 세자리 마다 콤마(X), true : 콤마(O) -->
	<i>test3 : </i><fmt:formatNumber value="${price}" type="percent" groupingUsed="false"/><br>
	<i>test4 : </i><fmt:formatNumber value="${price}" type="percent" groupingUsed="true"/><br>
	
	<c:set var="now" value="<%=new Date() %>"/>
	<!-- formatDate : 사용자 지정 형식 날짜   -->
	<!-- 날짜, type="date" -->
	<i>test5 : </i><fmt:formatDate value="${now}" type="date" dateStyle="full"/><br> <!-- YYYY년 MM월 dd일 x요일  -->
	<i>test6 : </i><fmt:formatDate value="${now}" type="date" dateStyle="long"/><br> <!-- YYYY년 MM월 dd일  --> 
	<i>test7 : </i><fmt:formatDate value="${now}" type="date" dateStyle="medium"/><br> <!-- YYYY. MM. dd.  --> 
	<i>test8 : </i><fmt:formatDate value="${now}" type="date" dateStyle="short"/><br> <!-- YY. MM. dd.  --> 
	<!-- 시간, type="time" -->
	<i>test9 : </i><fmt:formatDate value="${now}" type="time"/><br>
	<!-- 날짜,시간 둘다 -->
	<i>test10 : </i><fmt:formatDate value="${now}" type="both"/><br>
	<!-- 패턴 이용 (사용자 지정) -->
	<i>test11 : </i><fmt:formatDate value="${now}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/> <!-- M-월, m-분 -->
</body>
</html>