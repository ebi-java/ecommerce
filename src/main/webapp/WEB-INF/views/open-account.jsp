<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<jsp:include page="user-header-fragment.jsp"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Open New Account</title>
</head>
<body>
    <form:form method="post" modelAttribute="request" action="${pageContext.request.contextPath}/customer/open-account">
        <form:label path="accountType" for="account_select">Account Type</form:label>
        <form:select path="accountType" id="account_select" name="account_type">
            <option value="" selected disabled>Select an account type</option>
            <option value="Savings">Savings</option>
            <option value="Current">Current</option>
        </form:select>
        <form:label path="amount" for="account_balance">Initial Balance</form:label>
        <form:input path="amount" id="account_balance" type="number" value="0" min="0" name="amount"/>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>