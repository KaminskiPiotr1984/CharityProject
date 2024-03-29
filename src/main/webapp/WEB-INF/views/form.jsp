<%--
  Created by IntelliJ IDEA.
  User: piotr
  Date: 03.01.2020
  Time: 19:52
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
    <title>Form</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>

<body>

<header class="header--form-page">
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Oddaj rzeczy, których już nie chcesz<br/>
                <span class="uppercase">potrzebującym</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">Wystarczą 4 proste kroki:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Wybierz rzeczy</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Spakuj je w worki</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Wybierz fundację</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Zamów kuriera</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>


<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>


        <%--        <form:checkboxes path="category"--%>
        <%--                         items="${category}"/>--%>


        <form:form action="/form" method="post" modelAttribute="donation" name="donationForm">
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>

                    <%--                <form:checkboxes path="categories" items="${category}" itemValue="id" itemLabel="name"/>--%>

                <c:forEach items="${category}" var="category">
                    <form:checkbox path="categories" value="${category.id}"/>
                    <div class="form-group form-group--checkbox">

                        <label>
                                <%--                            <span class="checkbox"></span>--%>

                                <%--                            <span class="description">--%>

                            <div class="title">${category.name}</div>
<%--                            </span>--%>
                        </label>
                    </div>
                </c:forEach>

                    <%--                <div class="form-group form-group--checkbox">--%>
                    <%--                    <label>--%>
                    <%--                        <input--%>
                    <%--                                type="checkbox"--%>
                    <%--                                name="categories"--%>
                    <%--                                value="clothes-useless"--%>
                    <%--                        />--%>
                    <%--                        <span class="checkbox"></span>--%>
                    <%--                        <span class="description">ubrania, do wyrzucenia</span>--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                    <%--                <div class="form-group form-group--checkbox">--%>
                    <%--                    <label>--%>
                    <%--                        <input type="checkbox" name="categories" value="toys"/>--%>
                    <%--                        <span class="checkbox"></span>--%>
                    <%--                        <span class="description">zabawki</span>--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                    <%--                <div class="form-group form-group--checkbox">--%>
                    <%--                    <label>--%>
                    <%--                        <input type="checkbox" name="categories" value="books"/>--%>
                    <%--                        <span class="checkbox"></span>--%>
                    <%--                        <span class="description">książki</span>--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                    <%--                <div class="form-group form-group--checkbox">--%>
                    <%--                    <label>--%>
                    <%--                        <input type="checkbox" name="categories" value="other"/>--%>
                    <%--                        <span class="checkbox"></span>--%>
                    <%--                        <span class="description">inne</span>--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:

                        <form:input path="quantity" type="number" name="bags" step="1" min="1"/>

                            <%--                        <input type="number" name="bags" step="1" min="1"/>--%>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>


            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>

                <c:forEach items="${institutions}" var="institution">


                    <div class="form-group form-group--checkbox">
                        <label>
                            <form:radiobutton path="institutions" value="${institution.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                  <div class="title">${institution.name}</div>
                  <div class="subtitle">${institution.description}</div>
                </span>
                        </label>
                    </div>
                </c:forEach>

                    <%--                <div class="form-group form-group--checkbox">--%>
                    <%--                    <label>--%>
                    <%--                        <input type="radio" name="organization" value="old"/>--%>
                    <%--                        <span class="checkbox radio"></span>--%>
                    <%--                        <span class="description">--%>
                    <%--                  <div class="title">Fundacja “Dla dzieci"</div>--%>
                    <%--                  <div class="subtitle">--%>
                    <%--                    Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji--%>
                    <%--                    życiowej.--%>
                    <%--                  </div>--%>
                    <%--                </span>--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">

                            <label> Ulica <form:input path="street" type="text" name="address"/> </label>

                                <%--                            <label> Ulica <input type="text" name="address"/> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">

                            <label> Miasto <form:input path="city" type="text" name="city"/> </label>

                                <%--                            <label> Miasto <input type="text" name="city"/> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>

                                Kod pocztowy <form:input path="zipCode" type="text" name="postcode"/>

                                    <%--                                Kod pocztowy <input type="text" name="postcode"/>--%>
                            </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>

                                Numer telefonu <form:input path="phone" type="phone" name="phone"/>

                                    <%--                                Numer telefonu <input type="phone" name="phone"/>--%>
                            </label>
                        </div>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">

                            <label> Data <form:input path="pickUpDate" type="date" name="data"/> </label>

                                <%--                            <label> Data <input type="date" name="data"/> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">

                            <label> Godzina <form:input path="pickUpTime" type="time" name="time"/> </label>

                                <%--                            <label> Godzina <input type="time" name="time"/> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Uwagi dla kuriera
                                <form:textarea path="pickUpComment" name="more_info" rows="5"/>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 6 -->
            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text"
                                >4 worki ubrań w dobrym stanie dla dzieci</span
                                >
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text"
                                >Dla fundacji "Mam marzenie" w Warszawie</span
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li>Prosta 51</li>
                                <li>Warszawa</li>
                                <li>99-098</li>
                                <li>123 456 789</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>13/12/2018</li>
                                <li>15:40</li>
                                <li>Brak uwag</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>
        </form:form>
    </div>
</section>


<footer>
    <%@ include file="/WEB-INF/views/footer.jsp" %>
</footer>

<script src="<c:url value="/resources/js/app.js"/>"></script>

</body>
