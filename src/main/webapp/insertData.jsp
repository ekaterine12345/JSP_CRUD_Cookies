<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.models.Person" %>
<%@ page import="com.example.jvm2_lec2_jsp_project.utils.PersonUtil" %>
Created by IntelliJ IDEA.
  User: student
  Date: 3/18/2023
  Time: 09:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookies[] = request.getCookies();

    Map<String, String> map = new HashMap<>();
    for(int i=0; i< cookies.length; i++)
    {
        Cookie cookie = cookies[i];
     //   cookie.getValue();
        String name = cookie.getName();
        String value = cookie.getValue();
        out.print( name);
        out.print(value);
        map.put(name, value);
    }
    System.out.println(map.get("first_name"));
    System.out.println(map.get("last_name"));
    System.out.println(map.get("gender"));

    Person person = new Person(map.get("first_name"), map.get("last_name"), map.get("gender"));

        PersonUtil.setPersonList(person);
    PersonUtil.getPersonList().forEach(System.out::println);
%>

<h2 style="color: green"> Data inserted successfully</h2>
<a href="./"> Home Page</a>
</body>
</html>
