<%@ page import="com.example.jvm2_lec2_jsp_project.models.Person" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %><%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/23/2023
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Form</title>
</head>
<body>

<%
  int index = Integer.parseInt(request.getParameter("id"));
  Person person = PersonUtil.getElementByID(index);
  out.print(person);
%>

<form method="get" action="update.jsp">
  <input type="hidden"  name="id"  value="<%=index%>"/>
  <label for="first_name"> First name</label>
  <input name="first_name" value="<%= person.getFirst_name()%>"/>
  <br>
  <label for="last_name"> Last Name </label>
  <input name="last_name" value="<%= person.getLast_name()%>"/>
  <br>
  <select name="gender">
    <option value="female"> Female </option>
    <option value="male"> Male </option>
  </select>
  <br><br>
  <button type="submit">Submit</button>
</form>
</body>
</html>
