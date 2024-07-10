<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<jsp:include page="user-header-fragment.jsp"/>
<html>
<head>
    <title>Card Application Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Card.css">
</head>
<body>
<div class="container2">
    <div class="header-loan card-header" style="text-align: center">Loan Form</div>
    <img src="../../resources/images/images.png" alt="Card Image" class="card-image">
    <div class="progress-bar">
        <div class="progress-bar-fill">0%</div>
    </div>
    <form:form id="cardApplicationForm" method="post" modelAttribute="request" action="${pageContext.request.contextPath}/customer/apply-loan" onsubmit="handleSubmit(event);">
        <div class="form-group">
            <form:label path="amount" for="loan_amount">Loan Amount</form:label>
            <form:input path="amount" id="loan_amount" type="number" value="0" min="0" name="amount"/>
        </div>
        <div class="form-group">
            <form:label path="additionalInfo" for="additionalInfo">Additional Info</form:label>
            <form:input path="additionalInfo" id="additionalInfo" type="text" name="additionalInfo"/>
        </div>
        <div class="form-group">
            <form:label path="filePath1" for="filePath1">National ID</form:label>
            <form:input path="filePath1" id="filePath1" type="file" name="filePath1"/>
        </div>
        <div class="form-group">
            <form:label path="filePath2" for="filePath2">Payment Slip</form:label>
            <form:input path="filePath2" id="filePath2" type="file" name="filePath2"/>
        </div>
        <div class="button-group">
            <form:button type="submit" class="button-submit">Submit</form:button>
            <form:button type="reset" class="button-reset" onclick="resetProgressBar()">Reset</form:button>
        </div>
        <div class="progress-bar">
            <div id="progress-bar-inner" class="progress-bar-inner" style="display: none;">Loading...</div>
        </div>
    </form:form>
    <div class="spinner"></div>
    <div class="custom-alert" style="display: none;">
        <h2>Application Submitted!</h2>
        <img class="img-ok" style="max-width: 100%" src="../../resources/images/istockphoto-1128477281-612x612.jpg" alt="Success Image">
        <p>Your application has been successfully submitted.</p>
        <button id="close-btn" class="close-btn">OK</button>
    </div>
</div>
<script src="../../resources/js/Card.js"></script>
</body>
</html>


<%--    &lt;%&ndash;@elvariable id="request" type=""&ndash;%&gt;--%>
<%--    <form:form method="post" modelAttribute="request" action="${pageContext.request.contextPath}/customer/apply-loan" cssStyle="font-size: x-large">--%>
<%--        <form:label path="amount" for="loan_amount">Loan Amount</form:label>--%>
<%--        <form:input path="amount" id="loan_amount" type="number" value="0" min="0" name="amount"/>--%>

<%--        <form:label path="additionalInfo" for="additionalInfo">Additional Info</form:label>--%>
<%--        <form:input path="additionalInfo" id="additionalInfo" type="text" name="additional info"/>--%>

<%--        <form:label path="filePath1" for="filePath1">File Path1</form:label>--%>
<%--        <form:input path="filePath1" id="filePath1" type="text" name="file path 1"/>--%>

<%--        <form:label path="filePath2" for="filePath2">File Path2</form:label>--%>
<%--        <form:input path="filePath2" id="filePath2" type="text" name="file path 2"/>--%>
<%--        <input type="submit" value="Submit">--%>
<%--    </form:form>--%>
