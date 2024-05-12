<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>

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

        <a href="/bank-misr/logout" style="border-radius: 8px; padding: 10px;  margin-left: 12px; background-color: #871e35 ; color: white" >Log out </a>


    </nav>



</header>

<!-- header section ends -->

<!-- search form  -->



<!-- home section starts  -->


<!-- home section ends -->

<!-- category section starts  -->





<!-- category section ends -->

<!-- about section starts  -->


<!-- shop section ends -->

<!-- packages section starts  -->

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

                <a href="/admin/Customers" class="btn">explore Customers </a>
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