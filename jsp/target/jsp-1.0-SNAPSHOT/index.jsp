<%@ page import="java.util.Date" %>
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
<a href="hello-servlet">Hello Servlet</a><br/>

<%--jsp表达式
作用：用来将程序的输出，输出到客户端
<%= 变量或表达式%>
--%>
<%= new Date()%>
<hr/>

<%--脚本片段--%>
<%
    int sum = 0;
    for (int i = 0; i < 100; i++) {
        sum += i;
    }
    out.println("<h1> + sum:" + sum + "</h1>");
%>

<%
    int x = 10;
    out.println(x);
%>
<hr>
这是一个java代码</hr>
<%
    int y = 20;
    out.println(x);
    out.println(y);
%>

<%--在代码中嵌入html元素--%>
<%
    for (int i = 0; i < 5; i++) {
%>
<h1>hello world <%= i%>
</h1>
<%
    }
%>

<%!
    static {
        System.out.println("Loading");
    }
    private int globalVar = 0;
    public void study(){
        System.out.println("good good study~");
    }
%>
</body>
</html>