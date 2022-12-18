<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression_language.jsp</title>
</head>
<body>
	아이디 : <%=request.getAttribute("id") %><br> 
	이름 : <%=session.getAttribute("name") %><br>
	나이 : <%=request.getParameter("age") %><br>
	<!-- 
		EL태그?   속성 값들을 편리하게 출력하기 위해서 제공된 언어이다.
		- EL(Expression Language)태그는 해석 그대로 표현언어이다.
		  jsp에서 scriptlet 방식이나, out.println() 과 같은 자바코드를 사용하지 않고, 편리하게 출력을 지원해주는 도구
	 -->
	 
	<%-- 내장 객체 영역에 저장된 값을 가져오려면 ${영역의 내장객체Scope.Attribute이름}을 사용하면 된다. --%> 
	<!-- 영역을 지정하지 않으면 작은범위에서 부터 큰 범위로 찾아간다. (page->request->session->application) -->
	아이디 : ${requestScope.id}<br> 
	이름 : ${sessionScope.name}<br>
	
	<%-- parameter가 있어서 그 값을 가져오려면, ${param.이름}을 사용하면 된다. --%>
	나이 : ${param.age}<br>
</body>
</html>