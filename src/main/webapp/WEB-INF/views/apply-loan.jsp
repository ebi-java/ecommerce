<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<jsp:include page="user-header-fragment.jsp"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Apply New Loan</title>
</head>
<body>
    <%--@elvariable id="request" type=""--%>
    <form:form method="post" modelAttribute="request" action="${pageContext.request.contextPath}/customer/apply-loan" cssStyle="font-size: x-large">
        <form:label path="amount" for="loan_amount">Loan Amount</form:label>
        <form:input path="amount" id="loan_amount" type="number" value="0" min="0" name="amount"/>

        <form:label path="additionalInfo" for="additionalInfo">Additional Info</form:label>
        <form:input path="additionalInfo" id="additionalInfo" type="text" name="additional info"/>

        <form:label path="filePath1" for="filePath1">File Path1</form:label>
        <form:input path="filePath1" id="filePath1" type="text" name="file path 1"/>

        <form:label path="filePath2" for="filePath2">File Path2</form:label>
        <form:input path="filePath2" id="filePath2" type="text" name="file path 2"/>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>