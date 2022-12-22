<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actiontag_test1.jsp</title>
</head>
<body>
	<h1>이것은 원본 페이지 입니다.</h1>
	<!-- 액션태그? jsp:~ 형태의 태그  -->
	<!-- include 액션태그 : 파일을 include한다. -->
	<jsp:include page="includeTest.jsp"></jsp:include>
	<h1>다시 원본 페이지 입니다.</h1>
	<hr>
	<h1>이것은 원본 페이지 입니다.</h1>
	<%@ include file="includeTest.jsp"%>
	<h1>다시 원본 페이지 입니다.</h1>
</body>
</html>