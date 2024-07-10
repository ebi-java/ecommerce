<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>


</head>
<body>
<section>
    <form:form action="${pageContext.request.contextPath}/customer/certificate/calculate" modelAttribute="request">
        <h1 class="heading" style="font-size: 40px; margin-bottom: 45px;">Calculate Certificate Interest</h1>

        <div class="currency-converter">
            <div class="amount-input">
                <label for="loan-amount">Amount:</label>
                <form:input path="amount" type="number" id="amount" placeholder="Enter Amount" name="amount"/>
            </div>

            <div class="amount-input">
                <label for="certificate-type">Certificate Type:</label>
                <form:select path="type" id="certificate-type" name="type">
                    <c:forEach items="${types}" var="type">
                        <option value="${type}">${type}</option>
                    </c:forEach>
                </form:select>
            </div>

            <input type="submit" value="Calculate">

            <div class="result">
                <label>Result: ${result}</label>
                <form />
            </div>
        </div>

        <hr>
    </form:form>
</section>
</body>
</html>