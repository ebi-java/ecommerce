<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin | Product Categories</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<header class="header">
    <a href="${pageContext.request.contextPath}/admin/Customers" class="logo"> <i class=""></i> <img src="../../resources/images/bmp-logo.png" width="130px" height="auto" /> </a>
    <nav class="navbar">
        <div id="nav-close" class="fas fa-times"></div>
        <a href="${pageContext.request.contextPath}/admin/home">home</a>
        <a href="${pageContext.request.contextPath}/bank-misr/logout" style="border-radius: 8px; padding: 10px;  margin-left: 12px; background-color: #871e35 ; color: white" >Log out </a>
    </nav>
</header>
<div class="container-xxl mt-5">
    <h1>Categories</h1>
    <div class="d-flex py-2">
        <form action="${pageContext.request.contextPath}/admin/categories/searchByName" method="get" class="input-group">
            <input class="form-control shadow-none" type="text" name="name" value="${name}" placeholder="Search by name...">
            <input class="btn btn-outline-secondary px-3 input-group-text" type="submit" value="Search">
            <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/admin/categories">View All</a>
        </form>
        <a style="min-width: 135px" href="${pageContext.request.contextPath}/admin/categories/addCategory" class="btn px-2 ms-2 align-middle btn-primary">Add Category</a>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Type</th>
            <th class="px-5">Actions</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <c:forEach var="cat" items="${category}">
            <tr>
                <td>${cat.id}</td>
                <td>${cat.name}</td>
                <td>${cat.description}</td>
                <td>${cat.type}</td>
                <td class="text-center">
                    <a href="${pageContext.request.contextPath}/admin/categories/updateCategory/${cat.id}">Edit</a> |
                    <a href="${pageContext.request.contextPath}/admin/categories/deleteCategory/${cat.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>