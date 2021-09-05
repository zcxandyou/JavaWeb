<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  // 通过pageContext-
  String name1 = (String) pageContext.findAttribute("name1");
  String name2 = (String) pageContext.findAttribute("name2");
  String name3 = (String) pageContext.findAttribute("name3");
  String name4 = (String) pageContext.findAttribute("name4");
  String name5 = (String) pageContext.findAttribute("name5");
%>

<%--使用el表达式输出 ￥{}--%>
<h2>${name1}</h2>
<h2>${name2}</h2>
<h2>${name3}</h2>
<h2>${name4}</h2>
<h2><%=name5%></h2>
</body>
</body>
</html>
