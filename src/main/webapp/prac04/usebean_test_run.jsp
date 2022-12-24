<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<% request.setCharacterEncoding("utf-8");%>
<!-- class는 패키지명을 같이 사용해서 적는다. // UserVo 객체를 생성한 것  -->
<jsp:useBean id="userVo" class="prac04.action_tag.UserVo"/> 
<!-- 생성한 Vo에 값을 setXXX(); 하는 과정  -->
<jsp:setProperty name="userVo" property="*"/> <!-- 파라미터로 넘어온 값이랑 Vo에 선언된 필드의 이름이 같다면 자동으로 찾는다.(*) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean_test_run.jsp</title>
</head>
<body>
	<p>userVo = ${userVo}</p> <!-- 정상적으로 vo생성과 setter가 완료 -->
	<p>userid : ${userVo.userid }</p>
	<p>userpw : ${userVo.userpw }</p>
	<p>username : ${userVo.username }</p>
	<p>userPhoneNum : ${userVo.userphoneNum }</p>
	
</body>
</html>