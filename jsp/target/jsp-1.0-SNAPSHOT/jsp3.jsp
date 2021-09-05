<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--@include 会将两个页面合二为一--%>
<%@include file="./common/header.jsp" %>
<h1>网页主题</h1>
<%@include file="./common/footer.jsp" %>

<%--jsp：include拼接页面，本质还是三个--%>
<%--jsp标签--%>
<jsp:include page="common/header.jsp" />
<h1>网页主题</h1>
<jsp:include page="common/footer.jsp" />
</body>
</html>
