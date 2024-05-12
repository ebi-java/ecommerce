<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - View Categories</title>
</head>
<body>
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
    <table class="table table-striped" style="font-size: 10pt;">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Type</th>
            <th style="min-width: 20rem;">Actions</th>
        </tr>
        </thead>
        <tbody class="table-group-divider">
        <c:forEach var="cat" items="${category}">
            <tr>
                <td>${cat.id}</td>
                <td>${cat.name}</td>
                <td>${cat.description}</td>
                <td>${cat.type}</td>
                <td class="text-center" style="font-size: 8pt;">
                    <a class="btn px-2 py-0" href="${pageContext.request.contextPath}/admin/categories/updateCategory/${cat.id}">Edit</a> |
                    <a class="btn px-2 py-0" href="${pageContext.request.contextPath}/admin/categories/deleteCategory/${cat.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>