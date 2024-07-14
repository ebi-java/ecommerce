<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<jsp:include page="user-header-fragment.jsp"/>
<html>

<head>
    <title>Login</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Card.css">
    <link rel="stylesheet" href="../../resources/css/login.css">
</head>
<body>
<div class="card-container login-card-container">
    <img class="login-logo" src="../../resources/images/bmp-logo.png" width="140px" height="auto" alt="">
    <h1 class="card-header">Login</h1>
    <form:form class="login-form" action="${pageContext.request.contextPath}/customer/bank-misr-customer" method="post" modelAttribute="customer">
        <div class="login-form-body">
            <c:if test="${param.error != null}">
                <h3 class="danger" style="margin-bottom: 20px; color: red;">Invalid credentials</h3>
            </c:if>
            <div class="form-group">
                <form:label path="username" class="login-p">Username</form:label>
                <form:input path="username" class="login-input inputbox" style="background-color: #f0f0f0;" name="username" type="text" placeholder="Enter your username" />
            </div>

            <div class="form-group">
                <form:label path="password" class="login-p">Password</form:label>
                <form:input path="password" class="login-input inputbox" id="pass" style="background-color: #f0f0f0;" name="password" type="password" placeholder="Enter your password" />
            </div>
        </div>
        <div class="button-group">
            <button style="width: 100%" type="submit" class="button-submit">Login</button>
        </div>
        <a href="#">Forgot your password?</a><br>
    </form:form>
</div>
<script>
    var retailLink = document.getElementById("retail");
    var collaborateLink = document.getElementById("collaborate");

    retailLink.addEventListener("click", function() {
        if (!retailLink.classList.contains("active")) {
            retailLink.classList.add("active");
            collaborateLink.classList.remove("active");
        } else {
            retailLink.classList.remove("active");
        }
    });

    collaborateLink.addEventListener("click", function() {
        if (!collaborateLink.classList.contains("active")) {
            collaborateLink.classList.add("active");
            retailLink.classList.remove("active");
        } else {
            collaborateLink.classList.remove("active");
        }
    });
</script>
</body>

</html>
