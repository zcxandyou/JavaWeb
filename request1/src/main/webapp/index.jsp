<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<form action="login" method="post">
    用户名:<input type="text" name="username">
    密码:<input type="password" name="password">
    爱好：<input type="checkbox"  name="hobby" value="swimming">swimming
    <input type="checkbox" name="hobby" value="pingpang">play pingpang
    <input type="checkbox" name="hobby" value="running">running
    <input type="checkbox" name="hobby" value="movie">movie
    <input type="submit"  value="登录">
</form>
</body>
</html>