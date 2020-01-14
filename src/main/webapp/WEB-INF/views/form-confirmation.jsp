<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 14.01.2020
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Form-Confirmation</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>

<header class="header--form-page">


    <%@ include file="/WEB-INF/views/header.jsp" %>


    <div class="slogan container container--90">
        <h2>
            <p>Dziękujemy za przesłanie formularza.</p>
            <p>Na maila prześlemy wszelkie informacje o odbiorze.</p>

        </h2>
    </div>
</header>

<footer>
    <%@ include file="/WEB-INF/views/footer.jsp" %>
</footer>

<script src="<c:url value="/resources/js/app.js"/>"></script>

</body>

</html>