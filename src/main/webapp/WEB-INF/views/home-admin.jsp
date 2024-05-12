<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - Home</title>
</head>

<body>
<section class="packages" id="packages">

    <h1 class="heading" style="margin-top: 80px">Admin  </h1>

    <div class="box-container">

        <div class="box">
            <div class="image"  style="width: 260px; margin-left: 100px; color: #871e35"  >
                <img src="../../resources/bankimages/group.png" width="20px" alt="">
            </div>
            <div class="content">
                <h3>Customers </h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>

                <a href="${pageContext.request.contextPath}/admin/Customers" class="btn">explore Customers</a>
            </div>
        </div>

        <div class="box">
            <div class="image"  style="width: 260px; margin-left: 100px; color: #871e35"  >
                <img src="../../resources/bankimages/save-money.png" width="40px" height="20px" alt="">
            </div>
            <div class="content">
                <h3>Products</h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>
                <a href="/admin/product" class="btn">explore products</a>
            </div>
        </div>

        <div class="box">
            <div class="image"  style="width: 290px; margin-left: 100px; color: #871e35"  >
                <img src="../../resources/bankimages/menu.png" width="40px" height="20px" alt="">
            </div>
            <div class="content">
                <h3>Categories</h3>
                <p> The ability to produce per transaction categories for a bank account is crucial to identifying a person's creditworthiness.</p>
                <a href="/admin/categories" class="btn">explore categories</a>
            </div>
        </div>




    </div>

</section>

<!-- packages section ends -->

<!-- reviews section starts  -->



<!-- reviews section ends -->

</body>

</html>