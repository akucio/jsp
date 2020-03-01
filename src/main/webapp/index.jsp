<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: KuteK
  Date: 01.03.2020
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCount = 0; %>
<jsp:useBean id="calculator" class="pl.sda.jsp.utils.Calculator"/>
<jsp:setProperty name="calculator" property="n" value="5"/>
<html>
<head>
    <title>Hello world!</title>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">

    <h1><% out.println("Hello world!"); %></h1>
    <p>Dzisiaj jest: <%
        final LocalDate now = LocalDate.now();
        out.print(now);
    %></p>


    <%-- komentarz JSP --%>
    <!-- komentarz HTML -->

</div>
<div class="container">

    <div class="row">
        <div class="col-12">
            <p>Licznik odwiedzin: <%= ++visitCount%></p>
        </div>
    </div>

    <div class="row">
        <div class="col-4">
            <p>Server name: ${pageContext.request.serverName}</p>
        </div>
        <div class="col-4">
            <p>Server port: ${pageContext.request.serverPort}</p>
        </div>
        <div class="col-4">
            <p>Request URI: ${pageContext.request.requestURI}</p>
        </div>
    </div>

    <div class="row">
<%--        <jsp:forward page="redirected.jsp">--%>
<%--            <jsp:param name="myParam" value="my parameter"/>--%>
<%--        </jsp:forward>--%>
    </div>

    <div class="row">

        <div class="col-12">
            <p><%= calculator.getN()%><sup>2</sup> wynosi:
            <%  final int square = calculator.square();
                out.print(square);
            %>
            </p>
        </div>

    </div>

    <div class="row">

        <div class="col-12">
            <form action="search.jsp" method="post">
                <label>Szukane słowo: <input type="text" name="query"/></label>
                <label>Strona nr: <input type="text" name="page"/></label>
                <label>Sortowanie:
                    <select name="sort">
                        <option value="asc">Rosnąco</option>
                        <option value="desc">Malejąco</option>
                    </select>
                </label>
                <input type="submit" value="wyslij"/>
            </form>
        </div>

    </div>

    <div class="row">

        <div class="col-12">
        <a href="search.jsp?query=blablabla&page=20&sort=asc">link</a>
        </div>

    </div>

    <div class="row">

        <div class="col-12">
            <%
                final Cookie cookie = new Cookie("searchId", String.valueOf(123456));
                cookie.setMaxAge(60*60*24);
                response.addCookie(cookie);
            %>
        </div>

    </div>


</div>

</body>
</html>
