<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <title>product</title>
</head>
<body>

<main class="mainContent my-5 w-100">
    <div class="container">
        <div class="row">
            <div class="title col-12">
                <h1>Products</h1>
            </div>
            <c:forEach items="${products}" var="product" varStatus="loop">
                <div class="box col-12">
                    <div class="container-fluid">
                        <p class="d-inline-flex gap-1 w-100">
                            <button class="btn btn-primary border border-0 d-flex flex-direction-column justify-content-between w-100"
                                    type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop.index}"
                                    aria-expanded="false" aria-controls="collapseExample">
                                <h1>${product.name}</h1>
                                <div>
                                    <i class="bi bi-plus-lg fs-2"></i>
                                </div>
                            </button>
                        </p>
                        <div class="row">
                            <div class="collapse" id="collapse${loop.index}">
                                <div class="card card-body border border-0 fs-1">
                                    ${product.details}
                                </div>
                                <c:if test="${isSameType}">
                                    <form:form modelAttribute="product" method="get" action="${pageContext.request.contextPath}/customer/subscription/${product.id}">
                                        <input type="submit" class="btn btn-primary form-control" value="Subscribe">
                                    </form:form>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</main>


<!-- footer section starts  -->
<!-- footer section ends -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>