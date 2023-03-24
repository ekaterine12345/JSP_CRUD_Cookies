<%--<%@ page import="com.example.jvm2_lec2_jsp_project.models.Person" %>--%>
<%--<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %>--%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.models.Person" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<a href="input.jsp"> Input JSP </a>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<table style="border: 1px solid black">
    <thead>
    <th>id</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Gender</th>
    <th>Action</th>
    <th>update </th>
    </thead>
    <tbody>
    <% List<Person> persons =  PersonUtil.getPersonList();
    for(int i=0; i<persons.size(); i++) {%>
    <td><%= i+1 %></td>
    <td> <%=persons.get(i).getFirst_name()%></td>
    <td> <%=persons.get(i).getLast_name()%></td>
    <td> <%=persons.get(i).getGender()%></td>
    <td> <a href="./delete.jsp?id=<%= i%>">delete</a></td>
    <td> <a href="./update_form.jsp?id=<%= i%>">update </a></td>
    </tbody>
    <%}%>
</table>

</body>
</html>