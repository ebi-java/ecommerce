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
    <div class="d-flex py-2">
        <form action="${pageContext.request.contextPath}/categories/searchByName" method="get" class="input-group">
            <input class="form-control shadow-none" type="text" name="name" value="${name}" placeholder="Search by name...">
            <input class="btn btn-outline-secondary px-3 input-group-text" type="submit" value="Search">
            <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/categories">View All</a>
        </form><br><br>
        <h2>${customercategoryid.id}</h2>
        <h2>${customercategoryid.name}</h2>
        <h2>${customercategoryid.description}</h2>
        <h2>${customercategoryid.type}</h2>
        <br><br>
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
        <c:forEach var="cat" items="${customercategory}">
            <tr>
                <td>${cat.id}</td>
                <td>${cat.name}</td>
                <td>${cat.description}</td>
                <td>${cat.type}</td>
                <td class="text-center">
                    <a href="${pageContext.request.contextPath}/customer/categories/showProducts/${cat.id}">show products</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>