<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Add New Account</title>
    <style>
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

    </style>
</head>

<body >

<nav class="navbar bg-body-tertiary mb-5 py-4" style="background-color:#871e35 !important;">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1" style=" text-align:center;"><a href="${pageContext.request.contextPath}/admin/Customers" style="color: #fff; text-decoration: none"><-- Back</a></span>
        <span class="navbar-brand mb-0 h1" style=" text-align:center;float: right;margin-right:47.5%; color: white">Account Creation</span>
    </div>
</nav>



<div class="container">
    <div class="row">
        <div class="col-12">
            <form:form action="${pageContext.request.contextPath}/confirm-customer-addition" method="post" modelAttribute="">

                <%--                <form:hidden path="id"/>--%>
                <div class="mb-3">
                    <label  class="form-label">Type Of Account</label><br>
                    <form:radiobutton path="account.type"  id="saving" name="Account" class="custom-radio" value="saving"/>
                    <label for="saving">Saving</label><br>
                    <form:radiobutton path="account.type"  id="current" name="Account" class="custom-radio" value="current"/>
                    <label for="current">Current</label><br>
                    <form:radiobutton path="account.type"  id="Payroll" name="Account" class="custom-radio" value="Payroll"/>
                    <label for="Payroll">Payroll</label><br>

                </div>
                <div class="mb-3">
                    <label  class="form-label">Balance</label><br>
                    <form:input  path="account.balance" type="number" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

                <div class="mb-3">
                    <input type="submit" value="Submit" cssClass="form-control" style="background-color: #871e35;color: white"/>
                </div>

            </form:form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
</script>
</body>
</html>