<%--
  Created by IntelliJ IDEA.
  User: zhengchuxuan
  Date: 2021/8/29
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--内置对象--%>
<%
    pageContext.setAttribute("name1", "zhengchuxuan1"); //保存的数据只在一个页面有效
    request.setAttribute("name2", "zhengchuxuan2");   // 保存的数据只在一次请求有效，请求转发会携带这个数据
    session.setAttribute("name3", "zhengchuxuan3"); // 保存的数据只在一个会话有效，从打开浏览器到关闭浏览器
    application.setAttribute("name4", "zhengchuxuan4"); // 保存的数据在服务器有效，从打开服务器到关闭服务器
%>
<%--脚本片段中的代码会被原封不懂生成到jsp.java代码中
    这里面的代码必须符合java语法的正确性
--%>
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
</html>
