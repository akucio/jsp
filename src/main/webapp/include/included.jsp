<%@ page import="java.time.LocalDateTime" %>

<%--
  Created by IntelliJ IDEA.
  User: KuteK
  Date: 01.03.2020
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<p>
    (tekst z included.jsp) Dzisiaj jest <%= LocalDateTime.now()%>
</p>