<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入JSTL核心标签库，我们才能使用JSTL标签--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>if测试</h1>
<form action="coreIF.jsp" method="get">
    <%-- EL表达式获取表单中的数据${param.参数名}--%>
    <input type="text" name="username" value="${param.username}">
    <input type="password" name="password" value="${password}">
    <input type="submit" value="login">
</form>

<%--判断如果登录是管理员则登录成功--%>
<%--<%
    if(request.getParameter("username").equals("admin")){
        System.out.println("sucessful");
    }
%>--%>
<c:if test="${param.username == 'admin'}" var="isAdmin" >
    <c:out value="successful"/>
</c:if>
<c:out value="${isAdmin}"/>
</body>
</html>
