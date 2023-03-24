<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/18/2023
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> hi</h1>
<%--<jsp:include page="time2.jsp"></jsp:include>--%>
<%--ar musgaobda space-is gamo--%>
<jsp:include page="time2.jsp"></jsp:include>

<jsp:directive.include file = "time2.jsp" />
<jsp:directive.include file="time2.jsp"/>
<%@ include file="time2.jsp"%>
<jsp:include page="time1.jsp"/>
</body>
</html>
