<%@ page import="com.example.jvm2_lec2_jsp_project.models.Person" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %><%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/23/2023
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<%
    int index = Integer.parseInt(request.getParameter("id"));
    out.print(index);
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String gender = request.getParameter("gender");

    Person person = new Person(first_name, last_name, gender);
    out.print(person);
    PersonUtil.updatePerson(index, person);
%>
<p style="color: green"> Record <%=index+1%> has updates successfully!</p>
<a href="index.jsp"> Main Page</a>
</body>
</html>
