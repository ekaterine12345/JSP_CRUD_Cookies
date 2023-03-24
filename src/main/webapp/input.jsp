<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/18/2023
  Time: 09:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="get" action="check_form.jsp">
  <label for="first_name"> First name</label>
  <input name="first_name" value=""/>
  <br>
  <label for="last_name"> Last Name </label>
  <input name="last_name" value=""/>
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
