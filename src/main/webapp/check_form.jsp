<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/18/2023
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<form>--%>
<%--    <input name="first_name" value=""/>--%>
<%--</form>--%>
<form action="insertData.jsp">


<%
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String gender = request.getParameter("gender");

    Cookie cookie_first_name = new Cookie("first_name", first_name);
    Cookie cookie_last_name = new Cookie("last_name", last_name);
    Cookie cookie_gender = new Cookie("gender", gender);

    cookie_first_name.setMaxAge(60*60*24);
    cookie_last_name.setMaxAge(60*60*24);
    cookie_gender.setMaxAge(60*60*24);

    response.addCookie(cookie_first_name);
    response.addCookie(cookie_last_name);
    response.addCookie(cookie_gender);
%>
    <button type="submit"> submit</button>
</form>
    <ul>
        <li>First Name: <%= request.getParameter("first_name")%></li>
        <li>Last Name: <%= request.getParameter("last_name")%></li>
        <li>Gender: <%= request.getParameter("gender")%> </li>
    </ul>



</body>
</html>
