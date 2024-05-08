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
<div class="container-xxl mt-5">
    <h1>Categories</h1>
    <div class="d-flex py-2 justify-content-between">
        <form action="${pageContext.request.contextPath}/categories/searchByName" method="get" class="input-group">
            <input class="form-control" type="text" name="name" placeholder="Search by name...">
            <input class="btn btn-secondary px-3 input-group-text" type="submit" value="Search">
        </form>
        <a style="min-width: 135px" href="${pageContext.request.contextPath}/categories/addCategory" class="btn px-2 ms-2 align-middle btn-primary">Add Category</a>
    </div><table class="table table-striped table-bordered">
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
                    <a href="${pageContext.request.contextPath}/categories/updateCategory/${cat.id}">Edit</a> |
                    <a href="${pageContext.request.contextPath}/categories/deleteCategory/${cat.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>