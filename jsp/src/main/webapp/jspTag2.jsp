<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:forward page="jspTag.jsp">
    <jsp:param name="name" value="zhengchuxuan"/>
    <jsp:param name="age" value="15" />
</jsp:forward>
</body>
</html>
