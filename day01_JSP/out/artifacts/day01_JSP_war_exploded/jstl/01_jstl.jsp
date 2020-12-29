<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.zhuoding.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <c:forEach begin="1" end="10" var="i" step="2">
        ${i};
    </c:forEach>
    <hr>
    <%
        List<Student> stu_list = new ArrayList<>();
        stu_list.add(new Student("张三",22,"长沙"));
        stu_list.add(new Student("张4",20,"长沙"));
        stu_list.add(new Student("5三",21,"长沙"));
        request.setAttribute("stu",stu_list);

    %>

<c:forEach items="${stu}" var="user" varStatus="i">
    <%--${i.index},${i.count} 索引  编号 --%>
    ${user.name};
    ${user.age};
    ${user.address};
</c:forEach>
<hr>
    <c:if test="${3<4}">
       true
    </c:if>
<hr>
    <%
        request.setAttribute("msg","4");
    %>
<c:choose>
    <c:when test="${msg==1}">星期一</c:when>
    <c:when test="${msg==2}">星期二</c:when>
    <c:when test="${msg==3}">星期三</c:when>
    <c:otherwise>你输入的数据有误</c:otherwise>
</c:choose>

</body>
</html>
