<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Hlo-Blo Cafee Login</title>
    <meta charset="UTF-8" />
    <!-- css -->
    <link rel="stylesheet" href="../../resources/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../resources/css/helalstyle.css" />
    <link rel="stylesheet" href="../../resources/css/style.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        .login-options {
            margin-left: 35%;
            justify-content: center;
            margin-top: 20px;
        }

        .login-option {
            margin: 0 0px;
            padding: 5px 10px;
            border: 1px solid #7c5454;
            border-radius: 5px;
            text-decoration: none;
            color: #333;
            cursor: pointer;
            /* Added transition for smooth color change */
        }

        .login-option.active {
            background-color: #2e2e2e;
            color: #fff;
        }

        .login-option:hover {
            transform: none !important;
        }

        /* Remove hover effect */
    </style>
</head>

<body class="login">
<div class="loginbox">
    <img class="login-logo" src="../../resources/images/bmp-logo.png" width="140px" height="auto" alt="">
    <div class="login-options">
        <a class="login-option" id="retail">Retail </a>
        <a class="login-option" id="corporate">Corporate</a>
    </div>
    <form:form action="${pageContext.request.contextPath}/customer/login" method="post" modelAttribute="customer">
        <p class="login-p">User Name</p>
        <form:input path="username" class="login-input inputbox" style="background-color: #f0f0f0;" name="username" type="text" placeholder="Enter your username" />
        <p class="">Password</p>
        <form:input path="password" class="login-input inputbox" id="pass" style="background-color: #f0f0f0;" name="password" type="password" placeholder="Enter your password" />
        <input type="submit" class="bt opacity-hover inputbox" value="login" style="background-color: #871e35; color: white;" /><br>
        <a class="login-a" href="">Lost your password?</a><br>
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
