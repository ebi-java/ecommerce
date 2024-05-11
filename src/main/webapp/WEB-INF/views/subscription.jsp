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
    <title>subscription</title>
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

<%--body subscription--%>

<body>

<div class="container my-5">
    <div class="row">
        <div class="col-12">
            <h1>${message}</h1>
        </div>
    </div>
</div>

<c:forEach var="product" items="${products}" varStatus="loop">
<div class="product-div" onclick="toggleCollapse('collapseItem-${product.id}')">
        ${product.name}
    <span id="collapseItem-${loop.index}-icon" style="float:right;">+</span>
</div>
<div id="collapseItem-${loop.index}" class="collapse-content">
    <div class="product-details">
        <img src="${product.image}" width="300px" height="300px" alt="">
    </div>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <form:form action="${pageContext.request.contextPath}/customer/subscription/${product.name}" modelAttribute="subscription">
                    <form:hidden path="id"/>
                    <div class="mb-3">
                        <label for="Account" class="form-label">Account</label>
                        <form:select path="Account" cssClass="form-control" cssStyle="border:1px solid #871e35">
                            <c:forEach items="${accounts}" var="account">
                                <form:option value="${account}">${account.type} | ${account.accountNumber}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="mb-3">
                        <label for="Amount" class="form-label" >Amount</label>
                        <form:input path="Amount" type="number" cssClass="form-control" cssStyle="border:1px solid #871e35"/>
                    </div>

                    <div class="mb-3">
                        <input type="submit" value="Subscribe" class="form-control" style="background-color: #871e35;color: white"/>
                    </div>

                </form:form>
            </div>

            </c:forEach>

        </div>
    </div>
</div>


</body>

<%--end body subsciption--%>




<!-- footer section starts  -->

<section class="footer">

    <div>

        <img src="../../resources/bankimages/bmp.png" />
    </div>


    <div class="box-container">

        <div class="box">
            <h3>Banque Misr </h3>
            <a href="#home">BM News</a>
            <a href="#about">Responsible Banking</a>
            <a href="#shop">Taxes and Tariff E-Service</a>
            <a href="#packages">Auctions and Bids</a>
            <a href="#reviews">Fees and Rates</a>
            <a href="#blogs">Sitemap</a>
        </div>

        <div class="box">
            <h3>Quick Links </h3>
            <a href="#">BM Cards Offers</a>
            <a href="#">Exchange Rate And Currencies</a>
            <a href="#">Donations</a>
            <a href="#">Branches Operating In Non-Official Hours</a>
            <a href="#">Annual Business and CSR Reports</a>
            <a href="#">Related Links</a>
        </div>

        <div class="box">
            <h3>Contact us </h3>
            <a href="#"> <i class="fas fa-phone"></i> 19888 </a>
            <a href="#"> <i class="fas fa-envelope"></i> BM19888@banquemisr.com </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
        </div>

    </div>


</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
</script>
</body>
</html>