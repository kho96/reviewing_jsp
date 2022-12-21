<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- function 태그를 사용하려면 taglib를 등록해야함  -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] strs = {"가나", "포르투갈", "우크라이나"};
	pageContext.setAttribute("strs", strs);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_test3_core.jsp</title>
</head>
<body>
	<c:set var="name" value="oKIdockyman  PinoS  "/>
	name : ${name }<br>
	<!-- fn 태그(function 태그)는 EL태그와 같이 쓰여야한다. -->
	<!-- 문자열 길이/배열,컬렉션 등의 요소의 수를 반환 -->
	name의 문자열 갯수 : ${fn:length(name)} <br>
	<!-- 문자열 내에 특정문자를 새로운 문자열로 "모두" 변경해서 반환 -->
	man을 woman으로 변경 : ${fn:replace(name,"man","woman")}<br>
	<!-- 2번째 파라미터(인덱스) 부터 3번째 파라미터(인덱스)까지의 문자열 추출 -->
	index 3 ~ index 6 문자추출 : ${fn:substring(name,3,6) }<br>
	index 2 ~ 끝까지 문자추출 : ${fn:substring(name,2,name.length()) }<br>
	<!-- 특정 문자열 이후의 문자열을 반환 -->
	"doc" 이후의 문자열 반환 : ${fn:substringAfter(name, "doc")}<br>
	<!-- 특정 문자열 이전의 문자열을 반환 -->
	"doc" 이전의 문자열 반환 : ${fn:substringBefore(name, "doc")}<br>
	<!-- 문자열을 대문자로 변환 -->
	대문자로 변환 : ${fn:toUpperCase(name)} <br>
	<!-- 문자열을 소문자로 변환 -->
	소문자로 변환 : ${fn:toLowerCase(name) }<br>
	<!-- 앞뒤 공백제거 -->
	앞뒤 공백을 제거한 문자열의 길이 : ${fn:trim(name).length()}<br>
	<!-- 특정 문자열 포함여부 -->
	"dOcky"를 포함하는지 여부 : ${fn:contains(name, "dOcky")}<br>
	<!-- 특정 문자열 포함여부(대소문자 구분X) -->
	대소문자 상관없이 "dOcky"를 포함하는지 여부 : ${fn:containsIgnoreCase(name, "dOcky")}<br>
	<!-- 특정 문자열로 시작하는지 여부 -->
	"pr"로 시작하는지 여부 : ${fn:startsWith(name, "pr")}<br>
	<!-- 특정 문자열로 끝나는지 여부 -->
	"S"로 끝나는지 여부 : ${fn:endsWith(name, "S") }<br>
	<!-- 특정문자열이 시작되는 index -->
	"man"이 처음으로 나오는 index : ${fn:indexOf(name, "man") }<br>
	<!-- 특정문자열을 기준으로 문자열 분리, 반환은 배열 -->
	공백(" ")을 기준으로 문자열 분리하고 index 0번째인 것 : ${fn:split(name, " ")[0]}<br>
	<!-- 배열의 요소를 구분자를 이용해서 연결시켜 문자열로 반환 -->
	{"가나", "포르투갈", "우크라이나"}를 "-"로 연결해서 문자열로 반환 : ${fn:join(strs, "-")}
</body>
</html>