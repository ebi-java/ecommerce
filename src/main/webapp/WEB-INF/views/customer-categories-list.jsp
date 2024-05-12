<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>

<head>
    <title>Product Categories</title>
</head>
<body>
<div class="container-xxl mt-5">
    <h1>Categories</h1>
    <div class="row mb-3">
        <a class="btn col-6 border-end-0 btn-primary px-5" href="${pageContext.request.contextPath}/customer/retail">Retail Products</a>
        <a class="btn col-6 btn-primary px-5" href="${pageContext.request.contextPath}/customer/corporate">Corporate Products</a>
    </div>
    <div class="d-flex py-2">
        <form action="${pageContext.request.contextPath}/customer/searchByName" method="get" class="input-group d-flex align-items-stretch">
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
                    <form action="${pageContext.request.contextPath}/products" method="get">
                        <input type="hidden" name="categoryName" value="${cat.name}">
                        <input type="hidden" name="type" value="${cat.type}">
                        <input type="submit" value="Show All Products" class="btn btn-primary align-self-end"/>
                    </form>
                </div>
            </div>
            <hr>
        </c:forEach>

    </div>
</div>
</body>
</html>