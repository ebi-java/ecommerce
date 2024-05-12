<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - Add Product</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
    <form:form action="${pageContext.request.contextPath}/admin/product/confirm" method="post" modelAttribute="product">
        <form:hidden path="id"/>
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <form:input path="name" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
        </div>

        <div class="mb-3">
            <label for="details" class="form-label">Details</label>
            <form:textarea path="details" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
        </div>

        <div class="mb-3">
            <label for="imageProduct" class="form-label">Image</label>
            <form:input path="image" class="form-control" id="imageProduct"
                        cssStyle="border:1px solid #871e35"/>
        </div>


        <div class="mb-3">
            <label for="duration" class="form-label">Duration</label>
            <form:input path="duration" type="number" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
        </div>


            <div class="mb-3">
                <label for="categories" class="form-label">Category</label>
                <form:select path="categories" cssClass="form-control" cssStyle="border:1px solid #871e35">
                    <c:forEach items="${categories}" var="category">
                        <form:option value="${category}">${category.name} | ${category.type}</form:option>
                    </c:forEach>
                </form:select>
            </div>


        <div class="mb-3">
            <label for="interestRate" class="form-label">Interest Rate</label>
            <form:input type="number" path="interestRate" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
        </div>

        <div class="mb-3 w-100 row">
            <a class="btn btn-outline-secondary p-1 col-6" href="${pageContext.request.contextPath}/admin/product">Cancel</a>
            <input type="submit" value="Submit" class="btn btn-primary p-1 col-6"/>
        </div>

    </form:form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>