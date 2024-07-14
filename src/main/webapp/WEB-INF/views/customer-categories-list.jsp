<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <link rel="stylesheet" href="../../resources/css/products.css">
    <title>Product Categories</title>
</head>
<body>
<div class="container-xxl mt-5">
    <h1 class="title">Categories</h1>
    <div class="row mb-3">
        <a class="btn col-6 border-end-0 btn-primary px-5" href="${pageContext.request.contextPath}/customer/retail">Retail Products</a>
        <a class="btn col-6 btn-primary px-5" href="${pageContext.request.contextPath}/customer/corporate">Corporate Products</a>
    </div>
    <div class="d-flex py-2 w-100">
        <form class="category-search-form" action="${pageContext.request.contextPath}/customer/searchByName" method="get">
            <input class="search-bar" type="text" name="name" value="${name}" placeholder="Search by name...">
            <div class="search-buttons">
                <input type="hidden" name="type" value="${type}">
                <input class="btn" type="submit" value="Search">
                <a class="btn" href="${pageContext.request.contextPath}/customer/${type}">View All</a>
            </div>
        </form>
    </div>
    <div class="category-list mt-3">
        <c:forEach var="cat" items="${customercategory}">
            <div class="category-item">
                <div class="item-image" style="background-image: url('../../resources/images/${cat.name}.png')"></div>
                <div class="item-body">
                    <h2>${cat.name}</h2>
                    <p>${cat.description}</p>
                </div>
                <a class="item-footer" href="${pageContext.request.contextPath}/customer/products?categoryName=${cat.name}&type=${cat.type}">Show All Products</a>
            </div>
            <hr>
        </c:forEach>
    </div>
</div>
<jsp:include page="user-footer-fragment.jsp"/>
</body>
</html>