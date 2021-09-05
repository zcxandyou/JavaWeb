<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set value="85" var="score"/>
<c:choose>
  <c:when test="${score >= 90}">
    你的成绩为优秀
  </c:when>
  <c:when test="${score >= 80}">
    你的成绩为良好
  </c:when>
  <c:when test="${score >= 60}">
    你的成绩为一般
  </c:when>
  <c:when test="${score < 60}">
    你的成绩为差
  </c:when>
</c:choose>
</body>
</html>
