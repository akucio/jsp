<%--
  Created by IntelliJ IDEA.
  User: KuteK
  Date: 01.03.2020
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello world!</title>
</head>
<body>
    <h3><% out.println("Hello world!!!"); %></h3>
    <p>Dzisiaj jest: <%= java.time.LocalDate.now() %></p>
</body>
</html>