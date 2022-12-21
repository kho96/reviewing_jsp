<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>    
<%@ page import="java.util.HashMap" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	String[] strs = {"사과", "바나나", "배"};
	Map<String,String> map = new HashMap<>();
	map.put("red", "딸기");
	map.put("yellow", "바나나");
	pageContext.setAttribute("map", map);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_test3_core.jsp</title>
</head>
<body>
	<p>
		${map.get("red")}, ${map.get("yellow")},${map.get("orange")}, <!-- 마지막 orange값 없음 -->
		<!-- target="Map이나 Bean" property="속성(key)" value="값(value)" Bean에 set하거나 Map에 put하는 방법 -->
		<c:set target="${map}" property="orange" value="오렌지"/> <!-- map에 orange라는 이름으로 오렌지라는 값을 넣어줌 -->
		${map.get("orange")} <!-- 정상적으로 출력됨 -->
	</p>
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
	<c:set var="strs" value="한국,중국,미국,일본,프랑스,영국"></c:set>
	<p>	
		<!-- StringTokenizer + while 느낌... delims="구분자" 를 이용해 분리해서 반복한다. -->
		<c:forTokens var="item" items="${strs}" delims=",">
			☆${item}<br>
		</c:forTokens>
	</p>
	<!-- c:import 는 액션태그 include와 같은역할이지만, c태그 import는 다른 웹 어플리케이션도 가져올 수 있다. -->
	<!-- include와 달리 다른 프로젝트의 파일도 들고 올 수 있다. -->
	<c:import url="image.jsp"/><br>
	
	<!-- session영역에 id라는 이름으로 hong을 부여 -->
	<c:set var="id" value="hong" scope="session"/> <!-- scope 생략시 page로 설정  --> 
	<c:set var="name" value="홍길동" scope="request"/> 
	${id}, ${name },
	<!-- session영역에 id라는 이름으로 저장된 값을 지움 -->
	<c:remove var="id" scope="session"/> <!-- scope 생략시 page에서 부터 찾아간다.  -->
	${id}, ${name}
	
</body>
</html>