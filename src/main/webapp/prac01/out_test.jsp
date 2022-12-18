<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out_test.jsp</title>
</head>
<body>
	<form action="out_test2.jsp" method="post">
		이름: <input type="text" name="name" required="required">
		나이: <input type="number" name="age" required="required">
		<button type="submit">전송</button>
	</form>
</body>
</html>