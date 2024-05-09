<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>${category.name}</title>
</head>
<body>
<div class="container-xxl">
    <div class="row justify-content-center form-group mt-5">
        <div class="col-auto">
            <h1>Edit ${category.name} for ${category.type}</h1>
        </div>
    </div>
    <form:form action="${pageContext.request.contextPath}/categories/processCategory" modelAttribute="category" class="form">
        <div class="form-group mt-5">
            <form:input path="id" readonly="true" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <form:input path="name" type="text" placeholder="${category.name}" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <form:input path="description" type="text" placeholder="${category.description}" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <form:input path="type" type="text" placeholder="${category.type}" class="form-control"/>
        </div>

        <div class="row justify-content-center form-group mt-5">
            <div class="col-auto">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            <div class="col-auto">
                <a href="${pageContext.request.contextPath}/categories" class="btn btn-primary">Cancel</a>
            </div>
        </div>
    </form:form>
</div>
<%--@elvariable id="category" type=""--%>
<%--<form:form action="${pageContext.request.contextPath}/categories/processCategory" modelAttribute="category">--%>
<%--    <form:input path="id" readonly="true"/>--%>

<%--    <form:input path="name" type="text" placeholder = "${category.name}"/>--%>

<%--    <form:input path="description" type="text" placeholder = '${category.description}'/>--%>

<%--    <form:input path="type" type="text" placeholder = '${category.type}'/>--%>

<%--    <input type="submit" name="Submit"/>--%>
<%--</form:form>--%>
</body>
</html>