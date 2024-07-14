<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <link rel="stylesheet" href="../../resources/css/products.css">
    <title>product</title>
</head>
<body>

<div class="container">
    <h2 class="title">Products</h2>
    <div class="product-list">
        <c:forEach items="${products}" var="product" varStatus="loop">
            <div class="product-item">
                <div class="item-header"></div>
                <div class="item-body">
                    <h1>${product.name}</h1>
                    <p>${product.details}</p>
                </div>
                <div class="item-footer">
                    <c:if test="${isSameType}">
                        <form:form modelAttribute="product" method="get" action="${pageContext.request.contextPath}/customer/subscription/${product.id}">
                            <input type="submit" value="Subscribe">
                        </form:form>
                    </c:if>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="user-footer-fragment.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>