<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Add Customer</title>
    <style>
        .sidenav {
            height: 100%;
            width: 160px;
            position: fixed;
            z-index: 1;
            top: 50px;
            left: 0;
            background-color: #871e35;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidenav a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 25px;
            color: black;
            display: block;
        }

        .sidenav a:hover {
            color: #6d6d6d;
        }

        .custom-radio {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 20px;
            height: 20px;
            border: 2px solid;
            border-radius: 50%;
            outline: none;
            cursor: pointer;
            margin-right: 5px;
        }

        .custom-radio:checked::before {
            content: '';
            width: 12px;
            align-content: center;
            height: 12px;
            background-color: #871e35;
            display: block;
            border-radius: 50%;
            margin: 2px;
        }
        .container {
            margin-left: 160px; /* Same as the width of the sidenav */
            padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }

    </style>
</head>

<body >

<nav class="navbar bg-body-tertiary mb-5 py-4" style="background-color:#871e35 !important;">
    <div class="sidenav">
        <a href="${pageContext.request.contextPath}/admin/home">Home </a>
        <a href="${pageContext.request.contextPath}/admin/product">Product</a>
        <a href="${pageContext.request.contextPath}/admin/categories">Category</a>
        <a href="${pageContext.request.contextPath}/Customers">Customer</a>
    </div>
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1" style=" color: white">Customer Creation</span>
    </div>
</nav>



<div class="container">
    <div class="row">
        <div class="col-12">
            <form action="${pageContext.request.contextPath}/" method="post" >

                <hidden path="id"/>
                <div class="mb-3">
                    <label for="id" class="form-label">ID</label><br>
                    <form:input path="id" class="form-control" cssStyle="border:1px solid #871e35" />
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label><br>
                    <form:input path="name"  class="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">Type Of Customer</label><br>
                    <form:input path="retail" type="radio" id="Retail" name="choose" value="Retail" class="custom-radio" >
                    <label for="retail">Retail</label><br>
                    <form:input path="Corporate" type="radio" id="Corporate" name="choose" value="Corporate" class="custom-radio">
                    <label for="Corporate">Corporate</label><br>
                </div>


                <div class="mb-3">
                    <label for="phone"  class="form-label">Phone</label><br>
                    <form:input path="phone" type="number" class="form-control" cssStyle="border:1px solid #871e35"/>
                </div>
                <div class="mb-3">
                    <label for="birthdate" class="form-label">BirthDate</label><br>
                    <form:input path="birthdate"  type="date" class="form-control" cssStyle="border:1px solid #871e35"/>
                </div>


                <div class="mb-3">
                    <label for="email" class="form-label">Email</label><br>
                    <form:input path="email" type="email" class="form-control" cssStyle="border:1px solid #871e35"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Type Of Account</label><br>
                    <form:input path="saving" type="radio" id="saving" name="Account" class="custom-radio "value="saving">
                    <label for="saving">Saving</label><br>
                    <form:input path="current" type="radio" id="current" name="Account" class="custom-radio" value="current">
                    <label for="current">Current</label><br>
                    <form:input path="payroll" type="radio" id="Payroll" name="Account" class="custom-radio" value="Payroll">
                    <label for="Payroll">Payroll</label><br>

                </div>
                <div class="mb-3">
                    <label for="balance" class="form-label">Balance</label><br>
c                </div>

                <div class="mb-3">
                    <input type="submit" value="Submit" class="form-control" style="background-color: #871e35;color: white"/>
                </div>

            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
</script>
</body>
</html>