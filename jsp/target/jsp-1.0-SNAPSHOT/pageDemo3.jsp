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
<%--
    public static final int PAGE_SCOPE		= 1;
    public static final int REQUEST_SCOPE	= 2;
    public static final int SESSION_SCOPE	= 3;
    public static final int APPLICATION_SCOPE	= 4;
    public void setAttribute(String name, Object attribute, int scope) {
        switch(scope) {
        case 1:
            this.mPage.put(name, attribute);
            break;
        case 2:
            this.mRequest.put(name, attribute);
            break;
        case 3:
            this.mSession.put(name, attribute);
            break;
        case 4:
            this.mApp.put(name, attribute);
            break;
        default:
            throw new IllegalArgumentException("Bad scope " + scope);
        }

    }

--%>
<%
    pageContext.setAttribute("name", "zcx", pageContext.SESSION_SCOPE);
//    session.setAttribute("name", "zcx");
%>
</body>
</body>
</html>
