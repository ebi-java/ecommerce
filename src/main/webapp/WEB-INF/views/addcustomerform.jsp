<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - Add Customer</title>
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
<div class="container mb-5">
    <h1 class="mb-5">Add Customer</h1>
    <div class="row">
        <div class="col-12 mb-5">
            <%--@elvariable id="newCustomer" type=""--%>
            <form:form action="${pageContext.request.contextPath}/admin/confirm-customer-addition" method="post" modelAttribute="newCustomer"  >

<%--                <form:hidden path="id"/>--%>
                <div class="mb-3">
                    <label  class="form-label">National ID</label><br>
                    <form:input type="number" required="true" minLength="14" maxlength="14" path="customer.id" cssClass="form-control" cssStyle="border:1px solid #871e35"/>

                </div>
                <div class="mb-3">
                    <label  class="form-label">Name</label><br>
                    <form:input path="customer.name" required="true" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">Type Of Customer</label><br>
                    <form:radiobutton path="customer.type" required="true" id="Retail" name="choose" value="Retail" class="custom-radio"/>
                    <label for="Retail">Retail</label><br>
                    <form:radiobutton path="customer.type" required="true" id="Corporate" name="choose" value="Corporate" class="custom-radio"/>
                    <label for="Corporate">Corporate</label><br>
                </div>


                <div class="mb-3">
                    <label  class="form-label">Phone</label><br>
                    <form:input path="customer.phone" type="number" required="true" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>
                <div class="mb-3">
                    <label  class="form-label">BirthDate</label><br>
                    <form:input path="customer.birthDate" required="true" type="date" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>


                <div class="mb-3">
                    <label  class="form-label">Email</label><br>
                    <form:input path="customer.email" required="true"  type="email" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>
                <div class="mb-3">
                    <label  class="form-label">Type Of Account</label><br>
                    <form:radiobutton path="account.type" required="true"  id="saving" name="Account" class="custom-radio" value="saving"/>
                    <label for="saving">Saving</label><br>
                    <form:radiobutton path="account.type" required="true" id="current" name="Account" class="custom-radio" value="current"/>
                    <label for="current">Current</label><br>
                    <form:radiobutton path="account.type" required="true" id="Payroll" name="Account" class="custom-radio" value="Payroll"/>
                    <label for="Payroll">Payroll</label><br>

                </div>
                <div class="mb-3">
                    <label  class="form-label">Balance</label><br>
                    <form:input  path="account.balance" required="true" type="number" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                </div>

                <div class="mb-5">
                    <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/admin/Customers">Cancel</a>
                    <input type="submit" value="Submit" class="btn btn-primary"  style="background-color: #871e35;color: white"/>
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