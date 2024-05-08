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
    <title>Product Admin Form</title>
</head>
<body>
<form:form action="" method="post" modelAttribute="${Product}">
    <div class="mb-3">
        <form:input path="name" cssClass="form-control"/>
    </div>

    <div class="mb-3">
        <label for="details" class="form-label">Details</label>
        <form:textarea path="details" cssClass="form-control"/>
    </div>

    <div class="mb-3">
        <label for="imageProduct" class="form-label">Image</label>
        <form:input path="image" class="form-control" type="file" id="imageProduct"/>
    </div>


    <div class="mb-3">
        <label for="type" class="form-label">Type</label>
        <form:select path="type" id = "type">
            <form:option value="Individual">Individual</form:option>
            <form:option value="Corporate">Corporate</form:option>
        </form:select>
    </div>

    <div class="mb-3">
        <label for="duration" class="form-label">Duration</label>
        <form:select path="duration" id="duration">
            <option value="" selected>Choose the duration</option>
            <form:option value="1">1 year</form:option>
            <form:option value="3">3 years</form:option>
            <form:option value="5">5 years</form:option>
        </form:select>
    </div>


    <div class="mb-3">
        <label for="category" class="form-label">Category</label>
        <form:select path="category" id="category">
            <option value="" selected>Choose the Category</option>
            <form:option value="">Certificates</form:option>
            <form:option value="">Loans</form:option>
            <form:option value="">Cards</form:option>
            <form:option value="">Accounts</form:option>
        </form:select>
    </div>


    <div class="mb-3">
        <label for="interestRate" class="form-label">Interest Rate</label>
        <form:input type="number" path="interestRate"/>
    </div>

    <div class="mb-3">
        <input type="button" value="Submit" class="form-control"/>
    </div>

</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>