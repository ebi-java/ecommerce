<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Admin - Add Account</title>
</head>

<body >
<div class="container" style="font-size: 10pt">
    <div class="row">
        <div class="col-12">

            <form:form action="/admin/confirm-account-addition" method="post" modelAttribute="account">
                <input type="hidden" name="customer" value="${customer.id}">
<%--                                <form:hidden path="account.accountNumber"/>--%>
                <div class="mb-3">
                    <label  class="form-label">Type Of Account</label><br>
                    <form:radiobutton path="type"  id="saving" name="Account" class="custom-radio" value="saving"/>
                    <label for="saving">Saving</label><br>
                    <form:radiobutton path="type"  id="current" name="Account" class="custom-radio" value="current"/>
                    <label for="current">Current</label><br>
                    <form:radiobutton path="type"  id="Payroll" name="Account" class="custom-radio" value="Payroll"/>
                    <label for="Payroll">Payroll</label><br>

                </div>
                <div class="mb-3">
                    <label  class="form-label">Balance</label><br>
                    <form:input  path="balance" type="number" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

                <div class="mb-3">
                    <a class="btn btn-outline-secondary px-3 py-2" href="${pageContext.request.contextPath}/admin/view-customer?id=${c.id}">Cancel</a>
                    <input type="submit" value="Submit" class="btn btn-primary px-3 py-2" style="background-color: #871e35;color: white"/>
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