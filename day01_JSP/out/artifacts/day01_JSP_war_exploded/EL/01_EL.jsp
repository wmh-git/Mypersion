<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.zhuoding.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    List list = new ArrayList();
    list.add("hello");
    list.add("javaSE");
    list.add("Mysql");

    request.setAttribute("msg",list);

%>

<%
    List<Student> stu_list = new ArrayList<>();
    stu_list.add(new Student("张三",22,"长沙"));
    stu_list.add(new Student("张4",20,"长沙"));
    stu_list.add(new Student("5三",21,"长沙"));
    request.setAttribute("stu",stu_list);

%>
<%--${msg}--%>
${empty msg}
<hr>
${stu.get(1).name}
${stu.get(1).age}
${stu.get(1).address}

</body>
</html>
