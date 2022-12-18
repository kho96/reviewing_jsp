<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("데이터 바인딩");
	// 내장 객체의 영역(Scope) - page, request, session, application 영역을 가진다.
	// => 객체를 누구와 공유할 것인가를 나타낸다.
	/*
		page 영역 - 한 번의 웹 브라우저(클라이언트)의 요청에 대해 하나의 JSP 페이지가 호출됨 (페이지당) 
		-> 따라서 page 영역은 하나의 페이지 내에서만 객체 공유가 가능하다.
		-> pageContext 내장 객체를 사용한다.
		
		request 영역 - 한 번의 웹 브라우저(클라이언트)의 요청에 대해 같은 요청을 공유하는 페이지가 대응 (요청당)
		->  따라서 같은 request 영역이면 두 개의 페이지가 같은 요청을 공유할 수 있음.
		-> include, forward 액션 태그 사용시 request 내장 객체를 공유하게 되며 그에 따라 같은 request 영역이 됨
		-> request 내장 객체를 사용한다.
		
		session 영역 - 하나의 웹 브라우저당 1개의 session객체가 생성 (브라우저당)
		-> 같은 웹 브라우저 내에서 요청되는 페이지들은 같은 객체 공유
		-> 주로 회원관리(인증)에 사용되며 session 내장 객체를 이용한다.
		
		application 영역 - 하나의 웹 애플리케이션(프로젝트)당 1개의 application 객체 생성 (프로젝트당)
		-> 같은 웹 애플리케이션에 요청되는 페이지들은 같은 객체 공유
		-> /Project_Name 웹 애플리케이션에서는 같은 application 객체 공유 
		-> 애플리케이션 전체에서 공유하는 객체이므로 메모리에 부담이 갈 수 있어서 자주 사용되지는 않음
		-> application 내장 객체를 이용한다.
	*/
	pageContext.setAttribute("pageContextId", "pageContext홍길동");
	request.setAttribute("requestId", "request홍길동");
	session.setAttribute("sessionId", "session홍길동");
	application.setAttribute("applicationId", "application홍길동"); 
	
	System.out.println("포워딩...");
	RequestDispatcher dispatcher = request.getRequestDispatcher("/prac02/scope_test2.jsp");
	dispatcher.forward(request, response);
	
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope_test.jsp</title>
</head>
<body>
</body>
</html>