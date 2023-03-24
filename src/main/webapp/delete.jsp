<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/18/2023
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String index = request.getParameter("id");
    if (index== null || index.isEmpty()){
        out.print("object not found!");
    }
    else{
        boolean status = PersonUtil.deleteItem(Integer.parseInt(index));
        //? out.print("deleted"): out.print("cant find");
        if (status) {
            out.print("deleted this record successfully!");
        }
        else{
            out.print("can't delete");
        }

    }
%>
<a href="./"> Home</a>
</body>
</html>
