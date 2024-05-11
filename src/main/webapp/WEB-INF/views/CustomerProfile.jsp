<!doctype html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Customer Profile</title>
</head>
<body>
<!-- As a heading -->

<nav class="navbar bg-body-tertiary mb-5 py-4" style="background-color:#871e35 !important;">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1" style="color: white">Profile</span>
    </div>
</nav>


<div class="container">
    <div class="row">
        <div class="col-12" >
            <form:form action="${pageContext.request.contextPath}/customer/update"  modelAttribute="customer">

                <form:hidden path="id"/>
                <div class="mb-3">
<%--                    <label for="name" class="form-label">Name</label>--%>
                    <p>Name: ${customer.name}</p>
                </div>

                <div class="mb-3">
<%--                    <label for="type" class="form-label">Type</label>--%>
                    <p>Type: ${customer.type} </p>
                </div>

                <div class="mb-3">
<%--                    <label for="email" class="form-label">email</label>--%>
                    <p>Email: ${customer.email}</p>
                </div>

                <div class="mb-3">
<%--                    <label for="username" class="form-label">User name</label>--%>
                    <p>UserName: ${customer.username}</p>
                </div>


<%--                <div class="mb-3">--%>
<%--                    <label for="password" class="form-label">Password</label>--%>
<%--                    <form:input type="password" path="password" cssClass="form-control" cssStyle="border:1px solid #871e35"/>--%>
<%--                </div>--%>

                <div class="mb-3">
<%--                    <label for="password" class="form-label">Phone</label>--%>
                    <p>phone: ${customer.phone}</p>
                </div>

                <div class="mb-3">
<%--                    <label for="birthDate" class="form-label">Birth Date</label>--%>
                    <p>birth date : ${customer.birthDate}</p>
                </div>

                <div class="mb-3">
                    <form:input type="hidden" path="state" value="${customer.state}" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

<%--                <div class="mb-3">--%>
<%--                    <input type="submit" value="Update" class="form-control" style="background-color: #871e35;color: white"/>--%>
<%--                </div>--%>

            </form:form>

            <h1>Subscriptions</h1>

            <c:forEach var="subscription" items="${subscriptions}">
                <c:forEach var="s" items="${subscription}">
                    <p>Name : ${s.product.name}</p>
                    <p>amount : ${s.amount}</p>
                    <p>Start date : ${s.startDate}</p>
                    <p>duration : ${s.product.duration}</p>
                    <p>interest rate : ${s.product.interestRate}</p>
                </c:forEach>
            </c:forEach>



        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>