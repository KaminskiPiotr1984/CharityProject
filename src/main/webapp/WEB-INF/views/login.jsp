<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 14.01.2020
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Login</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<header class="header">

    <%@ include file="/WEB-INF/views/header.jsp" %>

</header>

<section class="login-page">
    <h2>Zaloguj się</h2>
<%--    <form:form action="/form" method="post" modelAttribute="login" name="loginForm">--%>
    <form>
        <div class="form-group">
<%--            <form:input path="email" type="email" name="email" placeholder="Email" />--%>
            <input type="email" name="email" placeholder="Email" />
        </div>
        <div class="form-group">
<%--            <form:input path="password" type="password" name="password" placeholder="Hasło" />--%>
            <input type="password" name="password" placeholder="Hasło" />
            <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
        </div>

        <div class="form-group form-group--buttons">
            <a href="/register" class="btn btn--without-border">Załóż konto</a>
            <button class="btn" type="submit">Zaloguj się</button>
        </div>
    </form>
<%--    </form:form>--%>
</section>

<footer>
    <%@ include file="/WEB-INF/views/footer.jsp" %>
</footer>

<script src="<c:url value="/resources/js/app.js"/>"></script>

</body>
</html>