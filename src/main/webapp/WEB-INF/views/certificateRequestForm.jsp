<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/Card.css">
    <title>Certificate Form</title>
    <script>

    </script>
</head>
<body>
    <div class="container">
        <h1 class="card-header">Certificate Form</h1>
        <img style="width: 300px; height: 200px; margin-left:33%" src="../../resources/images/coins-paper-money-and-globe-on-white-statistic-form-background.jpg" alt="Certificate Image">
        <form:form id="certificateApplicationForm" action="${pageContext.request.contextPath}/customer/certificate" method="post" modelAttribute="request" >
            <div class="form-group">
                <label for="accountID">Account Number:</label>
                <form:select path="accountId" id="accountid" name="account">
                    <c:forEach items="${accounts}" var="account" varStatus="loop">
                        <option value="${account.accountid}">${account.accountid} - (${account.accounttype.getValue()}): ${account.balance.getValue()}</option>
                    </c:forEach>
                </form:select>
            </div>

            <div class="form-group">
                <label for="CertificateType">Certificate Type:</label>
                <form:select path="type" id="CertificateType" name="type">
                    <c:forEach items="${types}" var="type">
                        <option value="${type}">${type} Year</option>
                    </c:forEach>
                </form:select>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <form:input min="1000" type="number" path="amount" id="amount" name="amount" /><!--in back cast to double -->
            </div>

            <div class="button-group">
                <button type="submit" class="button-submit">Submit</button>
                <button type="reset" class="button-reset" onclick="resetProgressBar()">Reset</button>
            </div>
        </form:form>
    </div>
</body>
</html>
