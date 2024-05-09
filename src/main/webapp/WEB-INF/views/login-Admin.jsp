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

        .login {
            margin-top: 50%;
            padding: 0;
            background-color: #f0f0f0;
            background-position: center;
        }

        .login-admin {
            margin-top: 50%;
            padding: 0;
            background-image: url(../../resources/images/coins-paper-money-and-globe-on-white-statistic-form-background.jpg);
            background-position: center;
        }

        .loginbox-admin {
            width: 620px;
            height: 470px;
            background: #f0f0f0;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            border-radius: 30px;
            padding: 150px 40px;
        }

        .loginbox {
            width: 620px;
            height: 670px;
            background: rgba(227, 223, 215, 0.7);
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            border-radius: 30px;
            padding: 150px 40px;
        }

        .login-title {
            margin: 20px;
            padding: 0 0 30px;
            text-align: center;
            font-size: 30px;
        }

        .login-logo {
            /* This will maintain the aspect ratio */
            position: absolute;
            top: 70px;
            left: calc(48% - 50px);
        }

        .login-p {
            margin: 0;
            padding: 0;
        }

        .login-input {
            width: 100%;
            padding-left: 20px;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .inputbox {
            border: none;
            border-radius: 20px;
            border-bottom: 1px solid #fff;
            background: rgba(245, 222, 180, 0.9);
            outline: none;
            height: 40px;
        }

        .login-a {
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            line-height: 20px;
            color: rgba(12, 8, 0, 0.945);
        }

        .login-a a:hover {
            color: #333;
        }


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

<body class="login-admin">
<div class="loginbox-admin">
    <img class="login-logo" src="../../resources/images/bmp-logo.png" width="140px" height="auto" alt="">

    <form:form action="${pageContext.request.contextPath}/admin/login/confirm-login" modelAttribute="login" >
        <p class="login-p">AdminName</p>
        <form:input class="login-input inputbox" style="background-color: #e2d7d7d3;" id="admin" path="name" type="text" placeholder = '${login.password}'/>
        <form:input class="login-input inputbox" id="pass" style="background-color: #e2d7d7d3;" type="password" path="password"  placeholder = "${login.name}"/>


<%--        <input class="login-input inputbox" style="background-color: #e2d7d7d3;" id="admin" type="text" placeholder="Enter your Name">--%>
<%--        <p class="">Password</p>--%>
<%--        <input class="login-input inputbox" id="pass" style="background-color: #e2d7d7d3;" type="password" placeholder="Enter your password">--%>
        <input type="submit" class="bt opacity-hover   inputbox" value="login" style="background-color: #2e2e2e; color: white;" id="button"><br>


    </form:form>
</div>

<script>
    function login() {
        var user = document.getElementById("user").value;
        var pass = document.getElementById("pass").value;

        var nam = localStorage.getItem("name1");
        var pas = localStorage.getItem("password1");

        if (user == nam && pass == pas) {
            swal("Great job", "Your login is correct", "success");
            setInterval(function() {
                location.replace("cafee.html");
            }, 3000)
        } else if (user == "" || pass == "") {
            swal("Failed", "Username or Password is correct, please try again", "error");
        } else {
            swal("Failed", "Username or Password is correct, please try again", "error");
        }
    }

    var button = document.getElementById("button");
    button.addEventListener("click", () => {
        login();
    });

    // JavaScript to handle changing background color on click
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