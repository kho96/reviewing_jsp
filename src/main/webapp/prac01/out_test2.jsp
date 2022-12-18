<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//JSP 내장객체 ? -> 웹 컨테이너가 객체 생성 없이 바로 사용할 수 있게 제공하는 객체 (스크립트릿 안에서만 사용 가능)
	// 종류 - request, response, out, session, application, pageContext, page, config, excepction
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	response.setContentType("text/html");
	response.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out_test2.jsp</title>
</head>
<body>
	<h1><%=name  %> 님은
	<%
		// out을 바로 사용 가능하다. 
		if (age >= 19) {
			out.println("성인입니다.");	
		} else {
			out.println("미성년자입니다.");	
		}
	%>
	</h1>
</body>
</html>