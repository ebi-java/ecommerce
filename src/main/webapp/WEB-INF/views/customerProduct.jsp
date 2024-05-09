<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../../resources/css/home.css">
    <title>product</title>
</head>
<body>


<header class="header position-relative">

    <a href="#" class="logo">
        <i class=""></i>
        <img src="../../resources/images/bmp-logo.png" width="130px" height="auto"/> </a>

    <nav class="navbar">
        <div id="nav-close" class="fas fa-times"></div>
        <a href="#home">home</a>
        <a href="#about">about</a>
        <a href="#shop">shop</a>
        <a href="#packages">packages</a>
        <a href="#reviews">reviews</a>
        <a href="#blogs">blogs</a>
    </nav>

    <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        <a href="#" class="fas fa-shopping-cart"></a>
        <div id="search-btn" class="fas fa-search"></div>
    </div>

    <div class="search-form">

        <div id="close-search" class="fas fa-times"></div>

        <form action="">
            <input type="search" name="" placeholder="search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>
    </div>

</header>

<!-- header section ends -->

<!-- search form  -->


<main class="mainContent my-5 w-100">
    <div class="container">
        <div class="row">
            <div class="title col-12">
                <h1>Companies Cards</h1>
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
                                <button class="btn btn-primary form-control">Subscribe</button>
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