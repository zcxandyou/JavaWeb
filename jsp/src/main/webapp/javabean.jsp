<%@ page import="com.zcx.jsp.pojo.People" %><%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/30
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//  People people = new People();
%>
<jsp:useBean id="people" class="com.zcx.jsp.pojo.People" scope="page"/>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="name" value="zcx"/>
<jsp:setProperty name="people" property="age" value="21"/>
id:<jsp:getProperty name="people" property="id"/>
姓名:<jsp:getProperty name="people" property="name"/>
年龄:<jsp:getProperty name="people" property="age"/>
</body>
</html>
