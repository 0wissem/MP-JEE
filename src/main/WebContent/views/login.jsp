<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="container">
	<form action="/TP03/login" method="post">
		Login: <input type="text" name="login"
			value="wissem.ksentini@yahoo.fr"><br /> Password: <input
			type="password" name="password" value="123456"><br /> <input
			type="submit" value="OK">
	</form>
</body>
</html>