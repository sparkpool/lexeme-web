<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD 
HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
   <form action="${pageContext.request.contextPath}/user/login" method="POST">
     Password : <input type="text" name="password" /><br />
     Email : <input type="text" name="email" /><br />
     <input type="submit" name="Login" />
   </form>
</body>
</html>