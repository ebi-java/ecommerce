<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin | Product Categories</title>
</head>
<body>
<h1>Categories</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cat" items="${category}">
        <tr>
            <td>${cat.id}</td>
            <td>${cat.name}</td>
            <td>${cat.description}</td>
            <td>
                <a href="${pageContext.request.contextPath}/categories/updateCategory/${cat.id}">Edit</a> |
                <a href="${pageContext.request.contextPath}/categories/deleteCategory/${cat.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>