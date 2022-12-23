<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean_test_form.jsp</title>
</head>
<body>
	<form action="usebean.test" method="post">
		아이디 : <input type="text" name="userid"><br>
		이름 : <input type="text" name="username"><br>
		비밀번호 : <input type="password" name="userpw"><br>
		폰번호 : <input type="text" name="userphoneNum"><br>
		<button type="submit">전송</button>
	</form>
</body>
</html>