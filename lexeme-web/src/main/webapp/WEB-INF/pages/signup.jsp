<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SignUp</title>
</head>
<body>
   <h1>Welcome To SignUp Page</h1>
   
   <form action="/${pageContext.request.contextPath}/user/signup" method="POST">
     <input type="text" name="password" /><br />
     <input type="text" name="email" /><br />
     <input type="text" name="userName" /><br />
     <input type="submit" name="SAVE" />
   </form>
</body>
</html>
