<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
</head>
<body>

<div class="type-form">
    <form action="${pageContext.request.contextPath}/admin/product/categories" method="get" style="margin-top: 20vh">
        <input id="retailBtn" style="margin-left: 35vw;" class="btn btn-primary" type="submit" value="Retail" name="type" onclick="toggleCategories('retail')">
        <input id="corporateBtn" style="margin-left: 20px;" class="btn btn-primary" type="submit" value="Corporate" name="type" onclick="toggleCategories('corporate')">
        <a href="${pageContext.request.contextPath}/admin/product/add"  style="margin-left: 20px;" class="btn btn-primary" type="submit"  name="Add">Add Product</a>
    </form>
</div>


<main class="mainContent my-5 w-100">
    <div class="container">
        <div class="row">
            <div class="title col-12">
            </div>
            <c:forEach items="${categories}" var="category" varStatus="loop1">
                <div class="box col-12">
                    <div class="container-fluid">
                        <p class="d-inline-flex gap-1 w-100">
                            <button class="btn btn-primary border border-0 d-flex flex-direction-column justify-content-between w-100"
                                    type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop1.index}"
                                    aria-expanded="false" aria-controls="collapseExample">
                                <h1>${category.name}</h1>
                                <input type="hidden" value="type" name="type">
                                <div>
                                    <i class="bi bi-plus-lg fs-2"></i>
                                </div>
                            </button>
                        </p>

                        <div class="collapse" id="collapse${loop1.index}">
                            <c:forEach items="${products}" var="product" varStatus="loop2">
                                <c:if test="${product.categories.name eq category.name}"> <!-- Check if product belongs to this category -->

                                    <div class="box col-12">
                                        <div class="container-fluid">
                                            <p class="d-inline-flex gap-1 w-100">
                                                <button id="sendRequestBtn" class="btn btn-primary border border-0 d-flex flex-direction-column justify-content-between w-100"
                                                        type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop2.index}"
                                                        aria-expanded="false" aria-controls="collapseExample">
                                                    <h1>${product.name}</h1>
                                                    <div>
                                                        <i class="bi bi-plus-lg fs-2"></i>
                                                    </div>
                                                </button>
                                            </p>
                                            <div class="collapse" id="collapse${loop2.index}">
                                                <div class="card card-body border border-0 fs-1">
                                                    <img src="${product.image}" width="300px" height="300px" alt="">
                                                </div>

                                                <div class="card card-body border border-0 fs-1">
                                                        ${product.details}
                                                </div>
                                                <div class="card card-body border border-0 fs-1">
                                                    <p>Duration: ${product.duration}</p>
                                                    <p>Interest Rate: ${product.interestRate}</p>
                                                </div>
                                                <a href="${pageContext.request.contextPath}/admin/product/update/${product.id}" style="margin-left: 30vw" class="btn btn-primary">Update</a>
                                                <a href="${pageContext.request.contextPath}/admin/product/delete/${product.id}" class="btn btn-primary">DELETE</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                            </c:forEach>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    function toggleCategories(category) {
        var categories = document.querySelectorAll('.box');
        categories.forEach(function (cat) {
            if (cat.classList.contains(category)) {
                cat.style.display = 'block';
            } else {
                cat.style.display = 'none';
            }
        });
        var retailBtn = document.getElementById('retailBtn');
        var corporateBtn = document.getElementById('corporateBtn');

        if (category === 'Retail') {
            retailBtn.classList.add('highlighted');
            corporateBtn.classList.remove('highlighted');
        } else if (category === 'Corporate') {
            corporateBtn.classList.add('highlighted');
            retailBtn.classList.remove('highlighted');
        }

    }

</script>


</body>
</html>
