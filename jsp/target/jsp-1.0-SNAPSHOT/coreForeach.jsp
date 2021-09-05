<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<String> people = new ArrayList<>();
    people.add(0, "zhangshan");
    people.add(1, "lisi");
    people.add(2, "wangwu");
    people.add(3, "zhaoliu");
    people.add(4, "tianqi");
    request.setAttribute("list", people);
%>
<c:forEach var="people" items="${list}">
    <c:out value="${people}"/><br>
</c:forEach>
<p></p>
<c:forEach var="people" items="${list}" begin="0" end="4" step="2">
    <c:out value="${people}"/><br>
</c:forEach>

</body>
</html>
