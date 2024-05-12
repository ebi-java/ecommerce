<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - Edit Category</title>
</head>
<body>
<div class="container-xxl">
    <div class="row justify-content-center form-group mt-5">
        <h1>Edit Category</h1>
    </div>
    <form:form action="${pageContext.request.contextPath}/admin/categories/processCategory" modelAttribute="category" class="form">
        <div class="form-group mt-5 d-none">
            <label>ID</label>
            <form:input path="id" readonly="true" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <label>Name</label>
            <form:input path="name" type="text" placeholder="${category.name}" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <label>Description</label>
            <form:textarea path="description" type="text" placeholder="${category.description}" class="form-control"/>
        </div>

        <div class="form-group mt-5">
            <label>Type</label>
            <form:input path="type" type="text" placeholder="${category.type}" class="form-control"/>
        </div>

        <div class="row justify-content-center form-group mt-5">
            <div class="col-auto">
                <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-primary">Cancel</a>
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>