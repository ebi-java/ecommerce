<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <title>Profile</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xl-4 col-12 mx-5 my-xl-0 my-5">
            <img src="../../resources/images/profile.png" style="width:300px;height: 300px">
        </div>
        <div class="col-xl-7 col-12" >
            <form:form action="${pageContext.request.contextPath}/customer/home"  modelAttribute="customer">
                <form:hidden path="id"/>
                <div class="mb-3">
                    <h2>Name: ${customer.userDetail.name}</h2>
                </div>

                <div class="mb-3">
                    <h2>Type: ${customer.userDetail.type} </h2>
                </div>

                <div class="mb-3">
                    <h2>Email: ${customer.userDetail.email}</h2>
                </div>

                <div class="mb-3">
                    <h2>UserName: ${customer.username}</h2>
                </div>

                <div class="mb-3">
                    <h2>phone: ${customer.userDetail.phone}</h2>
                </div>

                <div class="mb-3">
                    <h2>birthdate : ${customer.userDetail.birthDate}</h2>
                </div>

            </form:form>

            <div class="container">
                <h2 class="mt-5">Subscriptions</h2>
                <hr>
            <div class ="requestsData">
                <c:forEach items="${requests}" var="request">
                    <c:choose>
                        <c:when test="${not empty request.getApprovalCollection().approval}">
                            <div>Request Status: ${request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue()}</div>
                        </c:when>
                        <c:otherwise>
                            <div>Request Status: Pending</div>
                        </c:otherwise>
                    </c:choose>
                    <div>Request ID: ${request.getRequestid().toString()}</div>
                    <div>Request Type: ${request.getRequesttype().getValue()}</div>
                    <div>Request Date: ${request.getRequestdate().getValue()}</div>
                    <div>Request Amount: ${request.getAmount().getValue()}</div>

                    <div>""------------------------------"</div>
                </c:forEach>
            </div>

            <%--                <c:forEach var="subscription" items="${subscriptions}"  >--%>
<%--                    <c:forEach var="s" items="${subscription}" varStatus="loop">--%>
<%--                        <div class="box">--%>
<%--                            <div class="container">--%>
<%--                                <div class="row d-inline-flex gap-1 w-100">--%>
<%--                                    <button class="btn btn-primary border border-0 d-flex flex-direction-column justify-content-between w-100"--%>
<%--                                            type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop.index}"--%>
<%--                                            aria-expanded="false" aria-controls="collapseExample">--%>
<%--                                        <h1>${s.product.name}</h1>--%>
<%--                                        <div>--%>
<%--                                            <i class="bi bi-plus-lg fs-2"></i>--%>
<%--                                        </div>--%>
<%--                                    </button>--%>
<%--                                </div>--%>
<%--                                <div class="row">--%>
<%--                                    <div class="collapse" id="collapse${loop.index}">--%>
<%--                                        <div class="card card-body border border-0 fs-1">--%>
<%--                                            <h4>amount : ${s.amount}</h4>--%>
<%--                                            <h4>Start date : ${s.startDate}</h4>--%>
<%--                                            <h4>duration : ${s.product.duration}</h4>--%>
<%--                                            <h4>interest rate : ${s.product.interestRate}</h4>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>
<%--                </c:forEach>--%>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>