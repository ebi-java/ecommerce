<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<jsp:include page="user-header-fragment.jsp"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../resources/css/Card.css">
    <title>Open New Account</title>
</head>
<body>
<div class="card-container">
    <div style="flex: 1">
        <h2 class="card-header">Account Form</h2>
        <img style="max-width: 100vw" src="../../resources/images/IBAG MONEY TRANSFER.jpg" alt="Card Image" style="max-height: 300px;" class="card-image">
    </div>
    <form:form method="post" modelAttribute="request" action="${pageContext.request.contextPath}/customer/open-account">
        <div class="form-group">
            <form:input type="hidden" path="accountType"/>
            <form:label path="accountType">Account Type: ${request.accountType}</form:label>
        </div>
        <div class="form-group">
            <form:label path="amount" for="account_balance">Initial Balance</form:label>
            <form:input path="amount" id="account_balance" type="number" value="0" min="0" name="amount"/>
        </div>
        <div class="form-group">
            <button class="button-primary" type="submit" value="Submit">Apply</button>
        </div>
    </form:form>
</div>
</body>
</html>