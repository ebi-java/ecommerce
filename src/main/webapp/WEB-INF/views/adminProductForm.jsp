<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../../resources/css/home.css">


</head>
<body>
<!-- header section starts  -->
<header class="header">
    <a href="#" class="logo">
        <i class=""></i>
        <img src="../../resources/images/bmp-logo.png" width="130px" height="auto" /> </a>
    <nav class="navbar" >
        <a href="${pageContext.request.contextPath}/admin/home">home</a>
        <a href="${pageContext.request.contextPath}/bank-misr/logout" style="border-radius: 8px; padding: 10px;  margin-left: 12px; background-color: #871e35 ; color: white" >Log out </a>
    </nav>
</header>


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

        <div class="mb-3">
            <input type="submit" value="Submit" class="form-control" style="background-color: #871e35;color: white"/>
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