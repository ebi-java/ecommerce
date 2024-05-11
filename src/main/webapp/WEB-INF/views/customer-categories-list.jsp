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
    <div class="d-flex justify-content-between">
        <a class="btn btn-primary px-5" href="${pageContext.request.contextPath}/customer/retail">Retail Products</a>
        <a class="btn btn-primary px-5" href="${pageContext.request.contextPath}/customer/corporate">Corporate Products</a>
    </div>
    <div class="d-flex py-2">
        <form action="${pageContext.request.contextPath}/customer/searchByName" method="get" class="input-group">
            <input class="form-control shadow-none" type="text" name="name" value="${name}" placeholder="Search by name...">
            <input type="hidden" name="type" value="${type}">
            <input class="btn btn-outline-secondary px-3 input-group-text" type="submit" value="Search">
            <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/customer/${type}">View All</a>
        </form>
    </div>
    <div class="container mt-3">
        <c:forEach var="cat" items="${customercategory}">
            <div class="row mt-3">
                <div class="col-4">
                    <img src="lol.jpg">
                </div>
                <div class="col-8 d-flex flex-column">
                    <h2>${cat.name}</h2>
                    <p>${cat.description}</p>
                    <a class="btn btn-primary align-self-end" href="${pageContext.request.contextPath}/products?categoryName=${cat.name}&type=${cat.type}">Show All Products</a>
                </div>
            </div>
            <hr>
        </c:forEach>

    </div>
</div>
</body>
</html>