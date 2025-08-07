<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>form</h2> <!-- 아이디-aaa 패스워드-111
						    submit : w0807/FormPage post 전송하시오. -->
		<form action="/w0807/FormPage" method ="post">
			<label>아이디</label>
			<input type="text" name="id">
			<label>비밀번호</label>
			<input type="text" name="pw">
			<input type="submit" value="전송">
			
		</form>
		 
	
	</body>
</html>