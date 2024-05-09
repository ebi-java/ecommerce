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
        <a class="login-option" id="collaborate">Collaborate</a>
    </div>
    <form>
        <p class="login-p">User Name</p>
        <input class="login-input inputbox" style="background-color: #f0f0f0;" id="user" type="text" placeholder="Enter your username">
        <p class="">Password</p>
        <input class="login-input inputbox" id="pass" style="background-color: #f0f0f0;" type="password" placeholder="Enter your password">
        <input type="button" class="bt opacity-hover   inputbox" value="login" style="background-color: #871e35; color: white;" id="button"><br>
        <a class="login-a" href="">Lost your password?</a><br>


    </form>
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