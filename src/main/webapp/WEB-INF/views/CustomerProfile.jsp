<!doctype html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <title>Profile</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xl-4 col-12 mx-5 my-xl-0 my-5">
            <img src="../../resources/images/profile.png" class="w-75 h-100">
        </div>
        <div class="col-xl-7 col-12" >
            <form:form action="${pageContext.request.contextPath}/customer/update"  modelAttribute="customer">
                <form:hidden path="id"/>
                <div class="mb-3">
<%--                    <label for="name" class="form-label">Name</label>--%>
                    <h2>Name: ${customer.name}</h2>
                </div>

                <div class="mb-3">
<%--                    <label for="type" class="form-label">Type</label>--%>
                    <h2>Type: ${customer.type} </h2>
                </div>

                <div class="mb-3">
<%--                    <label for="email" class="form-label">email</label>--%>
                    <h2>Email: ${customer.email}</h2>
                </div>

                <div class="mb-3">
<%--                    <label for="username" class="form-label">User name</label>--%>
                    <h2>UserName: ${customer.username}</h2>
                </div>

<%--                <div class="mb-3">--%>
<%--                    <label for="password" class="form-label">Password</label>--%>
<%--                    <form:input type="password" path="password" cssClass="form-control" cssStyle="border:1px solid #871e35"/>--%>
<%--                </div>--%>

                <div class="mb-3">
<%--                    <label for="password" class="form-label">Phone</label>--%>
                    <h2>phone: ${customer.phone}</h2>
                </div>

                <div class="mb-3">
<%--                    <label for="birthDate" class="form-label">Birth Date</label>--%>
                    <h2>birthdate : ${customer.birthDate}</h2>
                </div>

                <div class="mb-3">
                    <form:input type="hidden" path="state" value="${customer.state}" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

<%--                <div class="mb-3">--%>
<%--                    <input type="submit" value="Update" class="form-control" style="background-color: #871e35;color: white"/>--%>
<%--                </div>--%>
            </form:form>
            <h2 class="mt-5">Subscriptions</h2>
            <hr>
            <c:forEach var="subscription" items="${subscriptions}">
                <c:forEach var="s" items="${subscription}">
                    <div class="box">
                        <div class="container">
                            <p class="row d-inline-flex gap-1 w-100">
                                <button class="btn btn-primary border border-0 d-flex flex-direction-column justify-content-between w-100"
                                        type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop.index}"
                                        aria-expanded="false" aria-controls="collapseExample">
                                    <h1>${s.product.name}</h1>
                                    <div>
                                        <i class="bi bi-plus-lg fs-2"></i>
                                    </div>
                                </button>
                            </p>
                            <div class="row">
                                <div class="collapse" id="collapse${loop.index}">
                                    <div class="card card-body border border-0 fs-1">
                                        <h4>amount : ${s.amount}</h4>
                                        <h4>Start date : ${s.startDate}</h4>
                                        <h4>duration : ${s.product.duration}</h4>
                                        <h4>interest rate : ${s.product.interestRate}</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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