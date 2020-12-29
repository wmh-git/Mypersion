<%--
  Created by IntelliJ IDEA.
  User: cary明
  Date: 2020/8/7
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object msg = request.getAttribute("msg");
    System.out.println(msg);
%>
</body>
</html>
