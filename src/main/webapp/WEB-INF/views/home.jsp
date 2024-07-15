<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../../resources/css/home.css">

    <style>
        /* CSS to control the height of the slider container */

        .slider-container {
            height: 100%;
            margin-top: 100px;
            /* Adjust this value to your preference */
            overflow: hidden;
            /* Hide overflow content */
        }

        .swiper {
            height: 100%;
        }

        label {
            margin-right: 5px;
            font-size: 18px;
        }

        select,
        input[type="number"] {
            width: 300px;
            padding: 10px;
            font-size: 18px;
            margin-right: 10px;
        }

        button {
            padding: 12px 30px;
            font-size: 20px;
            background-color: #871e35;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #871e35;
        }

        .result {
            margin-top: 20px;
            font-size: 20px;
        }

        .result input {
            width: 350px;
            padding: 10px;
            font-size: 18px;
            text-align: center;
        }

        .home {
            padding: 0;
        }

        .home .box {
            min-height: 100vh;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            background-size: cover !important;
            background-position: center !important;
            -webkit-box-pack: end;
            -ms-flex-pack: end;
            justify-content: flex-end;
            padding: 2rem 9%;
        }

        .home .box.second {
            -webkit-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
        }

        .home .box .content {
            width: 50rem;
        }

        .home .box .content span {
            font-size: 4rem;
            color: #10221b;
        }

        .home .box .content h3 {
            font-size: 6rem;
            color: #871e35;
            padding-top: .5rem;
            text-transform: uppercase;
        }

        .home .box .content p {
            line-height: 2;
            color: #4c6d60;
            font-size: 1.5rem;
            padding: 1rem 0;
        }


        .home {
            padding: 0;
        }

        .home .box {
            min-height: 100vh;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            background-size: cover !important;
            background-position: center !important;
            -webkit-box-pack: end;
            -ms-flex-pack: end;
            justify-content: flex-end;
            padding: 2rem 9%;
        }

        .home .box.second {
            -webkit-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
        }

        .home .box .content {
            width: 50rem;
        }

        .home .box .content span {
            font-size: 4rem;
            color: #10221b;
        }

        .home .box .content h3 {
            font-size: 6rem;
            color: #871e35;
            padding-top: .5rem;
            text-transform: uppercase;
        }

        .home .box .content p {
            line-height: 2;
            color: #4c6d60;
            font-size: 1.5rem;
            padding: 1rem 0;
        }

        .slider-container {
            height: 100%;
            margin-top: 100px;
            overflow: hidden;
        }

        .swiper {
            height: 100%;
        }
    </style>

</head>

<body>

<!-- home section starts  -->

<section class="home" id="home">
    <div class="slider-container">

        <div class="swiper home-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <div class="box" style="background: url(../../resources/bankimages/27.jpg) no-repeat;">
                        <div class="content">

                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box second" style="background: url(../../resources/bankimages/reward.jpg) no-repeat;">
                        <div class="content">

                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box" style="background: url(../../resources/bankimages/card.jpeg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>


                <div class="swiper-slide">
                    <div class="box" style="background: url(../../resources/bankimages/Visa.jpeg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box" style="background: url(../../resources/bankimages/ibn.jpg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>


                <div class="swiper-slide">
                    <div class="box" style="background: url(../../resources/bankimages/bankmisr.jpg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>
            </div>

            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>

        </div>
    </div>
</section>

<section class="about" id="about">

    <div class="image">
        <img src="../../resources/bankimages/1600-banque-misr.jpg" alt="">
    </div>

    <div class="content">
        <h3 style="color: #871e35;">Banque Misr History </h3>
        <p> Banque Misr (BM) was established in 1920 by the pioneer economist and financial expert Mohamed Talaat Harb
            Pasha, who spearheaded the concept of investing in national savings and directing them toward economic and
            social development.</p>
        <p> Thus, Banque Misr was established as the first wholly Egyptian-owned bank. anque Misr has funded many
            businesses spanning across multiple domestic sectors, such as: textiles, insurance, transportation,
            aviation, entertainment, and filmmaking.</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>
<section class="calculator-section">
    <h2 class="title text-center">Calculation Services</h2>
    <div class="calculator-list mt-5">
        <div class="calculator-item">
            <div class="calculator-item-image" style="background-image: url('../../resources/images/loan-calculator.jpg')"></div>
            <a href="${pageContext.request.contextPath}/calculator/loan">
                <div class="calculator-item-link">Loan Calculator</div>
            </a>
        </div>
        <div class="calculator-item">
            <div class="calculator-item-image" style="background-image: url('../../resources/images/certificate-calculator.jpg')"></div>
            <a href="${pageContext.request.contextPath}/calculator/certificate">
                <div class="calculator-item-link">Certificate Calculator</div>
            </a>
        </div>
        <div class="calculator-item">
            <div class="calculator-item-image" style="background-image: url('../../resources/images/exchange-calculator.png')"></div>
            <a href="${pageContext.request.contextPath}/calculator/exchangeRate">
                <div class="calculator-item-link">Exchange Rates</div>
            </a>
        </div>
    </div>
</section>

<jsp:include page="user-footer-fragment.jsp"/>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../../resources/js/script.js"></script>

</body>

</html>