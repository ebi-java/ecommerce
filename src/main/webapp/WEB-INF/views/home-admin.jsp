<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/home.css">


    <style>

        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,500;0,600;1,100;1,300&display=swap");

        :root {
            --primary-color: #871e35;
            --background-color: #fff;

        }

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
            text-transform: capitalize;
            -webkit-transition: .2s linear;
            transition: .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-behavior: smooth;
            scroll-padding-top: 5rem;
        }

        html::-webkit-scrollbar {
            width: 1rem;
        }

        html::-webkit-scrollbar-track {
            background: #fff;
        }

        html::-webkit-scrollbar-thumb {
            background: #871e35;
        }

        section {
            padding: 5rem 9%;
        }

        .btn {
            margin-top: 1rem;
            display: inline-block;
            border: 0.2rem solid #871e35;
            color: #10221b;
            cursor: pointer;
            background: none;
            font-size: 1.7rem;
            padding: 1rem 3rem;
        }

        .btn:hover {
            background: #871e35;
            color: #fff;
        }

        .heading {
            text-align: center;
            margin-bottom: 2.5rem;
            font-size: 4rem;
            color: #10221b;
        }

        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            padding: 2rem 9%;
            z-index: 1000;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .header.active {
            background: #fff;
            -webkit-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
        }

        .header .logo {
            margin-right: auto;
            font-size: 2.5rem;
            color: #10221b;
            font-weight: bolder;
        }

        .header .logo i {
            color: #871e35;
        }

        .header .navbar a {
            margin-left: 2rem;
            font-size: 1.7rem;
            color: #10221b;
        }

        .header .navbar a:hover {
            color: #871e35;
        }

        .header .navbar #nav-close {
            font-size: 5rem;
            cursor: pointer;
            color: #10221b;
            display: none;
        }

        .header .icons a,
        .header .icons div {
            font-size: 2.5rem;
            margin-left: 2rem;
            cursor: pointer;
            color: #10221b;
        }

        .header .icons a:hover,
        .header .icons div:hover {
            color: #871e35;
        }

        .header #menu-btn {
            display: none;
        }

        .search-form {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.8);
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            z-index: 10000;
            -webkit-transform: translateY(-110%);
            transform: translateY(-110%);
        }

        .search-form.active {
            -webkit-transform: translateY(0%);
            transform: translateY(0%);
        }

        .search-form #close-search {
            position: absolute;
            top: 1.5rem;
            right: 2.5rem;
            cursor: pointer;
            color: #fff;
            font-size: 6rem;
        }

        .search-form #close-search:hover {
            color: #871e35;
        }

        .search-form form {
            width: 70rem;
            margin: 0 2rem;
            padding-bottom: 2rem;
            border-bottom: 0.2rem solid #fff;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .search-form form input {
            width: 100%;
            font-size: 2rem;
            color: #fff;
            text-transform: none;
            background: none;
            padding-right: 2rem;
        }

        .search-form form input::-webkit-input-placeholder {
            color: #aaa;
        }

        .search-form form input:-ms-input-placeholder {
            color: #aaa;
        }

        .search-form form input::-ms-input-placeholder {
            color: #aaa;
        }

        .search-form form input::placeholder {
            color: #aaa;
        }

        .search-form form label {
            font-size: 3rem;
            cursor: pointer;
            color: #fff;
        }

        .search-form form label:hover {
            color: #871e35;
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

        .swiper-button-next::after,
        .swiper-button-prev::after {
            font-size: 3rem;
            color: #10221b;
        }

        .category .box-container {
            display: -ms-grid;
            display: grid;
             grid-template-columns: repeat(auto-fit, minmax(29rem, 1fr));
            gap: 1.5rem;
        }

        .category .box-container .box {
            text-align: center;
            padding: 1rem;
        }

        .category .box-container .box img {
            height: 20rem;
            width: 20rem;
            border-radius: 50%;
            margin-bottom: 1rem;
        }

        .category .box-container .box h3 {
            font-size: 2rem;
            color: #871e35;
        }

        .category .box-container .box p {
            font-size: 1.5rem;
            color: #10221b;
            padding: 1rem 0;
            line-height: 2;
        }

        .about {
            background: #eee;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .about .image {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 42rem;
            flex: 1 1 42rem;
            padding-right: 5rem;
            padding-bottom: 5rem;
        }

        .about .image img {
            width: 100%;
            -webkit-box-shadow: 4rem 4rem 0 rgba(0, 0, 0, 0.1);
            box-shadow: 4rem 4rem 0 rgba(0, 0, 0, 0.1);
        }

        .about .content {
            -webkit-box-flex: 1;
            -ms-flex: 1 1 42rem;
            flex: 1 1 42rem;
        }

        .about .content h3 {
            font-size: 3rem;
            color: #871e35;
        }

        .about .content p {
            font-size: 1.5rem;
            color: #10221b;
            padding: 1rem 0;
            line-height: 2;
        }

        .shop .slide {
            border: 0.2rem solid #565656;
        }

        .shop .slide:hover .image .icons {
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        .shop .slide .image {
            position: relative;
            overflow: hidden;
            height: 30rem;
            width: 100%;
        }

        .shop .slide .image img {
            height: 100%;
            width: 100%;
            -o-object-fit: cover;
            object-fit: cover;
        }

        .shop .slide .image .icons {
            width: 100%;
            position: absolute;
            bottom: 2rem;
            left: 0;
            text-align: center;
            z-index: 10;
            -webkit-transform: translateY(7rem);
            transform: translateY(7rem);
        }

        .shop .slide .image .icons a {
            height: 4.5rem;
            width: 4.5rem;
            line-height: 4.5rem;
            font-size: 1.7rem;
            background: #565656;
            color: #fff;
            margin: 0 .2rem;
        }

        .shop .slide .image .icons a:hover {
            background: #871e35;
        }

        .shop .slide .content {
            padding: 1rem 0;
            text-align: center;
        }

        .shop .slide .content h3 {
            font-size: 2rem;
            color: #10221b;
        }

        .shop .slide .content .price {
            padding: 1rem 0;
            padding-top: .5rem;
            font-size: 2rem;
            color: #871e35;
        }

        .shop .slide .content .stars i {
            font-size: 1.7rem;
            color: #10221b;
        }

        .packages {
            background: #eee;
        }

        .packages .box-container {
            display: -ms-grid;
            display: grid;
             grid-template-columns: repeat(auto-fit, minmax(32rem, 1fr));
            gap: 1.5rem;
        }

        .packages .box-container .box {
            text-align: center;
            background: #fff;
            border: 0.2rem solid #10221b;
            -webkit-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
            border-radius: .5rem;
        }

        .packages .box-container .box:hover {
            background: #871e35;
        }

        .packages .box-container .box:hover .content>* {
            color: #fff;
        }

        .packages .box-container .box:hover .btn {
            border-color: #fff;
        }

        .packages .box-container .box:hover .btn:hover {
            background: #fff;
            color: #871e35;
        }

        .packages .box-container .box .image {
            height: 25rem;
            overflow: hidden;
            padding: 2rem;
            padding-bottom: 0;
            border-radius: .5rem;
        }

        .packages .box-container .box .image img {
            height: 100%;
            width: 100%;
            -o-object-fit: cover;
            object-fit: cover;
            border-radius: .5rem;
        }

        .packages .box-container .box .content {
            padding: 2rem;
        }

        .packages .box-container .box .content h3 {
            font-size: 2rem;
            color: #10221b;
        }

        .packages .box-container .box .content p {
            font-size: 1.5rem;
            color: #10221b;
            padding: 1rem 0;
            line-height: 2;
        }

        .packages .box-container .box .content .price {
            font-size: 2rem;
            color: #871e35;
        }

        .services {
            background: #eee;
        }

        .services .box-container {
            display: -ms-grid;
            display: grid;
             grid-template-columns: repeat(auto-fit, minmax(31rem, 1fr));
            gap: 1.5rem;
        }

        .services .box-container .box {
            text-align: center;
            padding: 2rem;
            border: 0.2rem solid #10221b;
            border-radius: .5rem;
            background: #fff;
        }

        .services .box-container .box:hover {
            background: #10221b;
        }

        .services .box-container .box:hover img {
            -webkit-filter: invert(1);
            filter: invert(1);
        }

        .services .box-container .box:hover p {
            color: #fff;
        }

        .services .box-container .box:hover .btn {
            border-color: #fff;
            color: #fff;
        }

        .services .box-container .box:hover .btn:hover {
            background: #fff;
            color: #10221b;
        }

        .services .box-container .box img {
            height: 10rem;
            margin-bottom: 1rem;
        }

        .services .box-container .box h3 {
            font-size: 2rem;
            color: #871e35;
        }

        .services .box-container .box p {
            font-size: 1.5rem;
            color: #10221b;
            padding: 1rem 0;
            line-height: 2;
        }

        .reviews .slide .text {
            padding: 2rem;
            font-size: 1.5rem;
            font-style: italic;
            background: #eee;
            border-radius: .5rem;
            color: #10221b;
            line-height: 2;
            position: relative;
            z-index: 0;
            margin-bottom: 3rem;
        }

        .reviews .slide .text::before {
            content: '';
            position: absolute;
            bottom: -1.5rem;
            left: .7rem;
            height: 3rem;
            width: 3rem;
            background: #eee;
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
        }

        .reviews .slide .user {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            gap: 1rem;
        }

        .reviews .slide .user img {
            height: 7rem;
            width: 7rem;
            border-radius: 50%;
        }

        .reviews .slide .user h3 {
            font-size: 2rem;
            color: #10221b;
        }

        .reviews .slide .user span {
            color: #871e35;
            font-size: 1.5rem;
        }

        .blogs .slide {
            text-align: center;
            padding: 2rem;
        }

        .blogs .slide img {
            height: 25rem;
            width: 100%;
            -o-object-fit: cover;
            object-fit: cover;
            border-radius: .5rem;
        }

        .blogs .slide .icons {
            background: #871e35;
            border-radius: .5rem;
            padding: 1rem;
            position: relative;
            top: -2rem;
            display: inline-block;
        }

        .blogs .slide .icons a {
            font-size: 1.4rem;
            color: #fff;
            margin: 0 1rem;
        }

        .blogs .slide .icons a:hover {
            color: #871e35;
        }

        .blogs .slide .icons a i {
            padding-right: .5rem;
            color: #b0a9ab;
        }

        .blogs .slide h3 {
            font-size: 2rem;
            color: #10221b;
        }

        .blogs .slide p {
            font-size: 1.4rem;
            padding: 1rem 0;
            line-height: 2;
            color: #10221b;
        }

        .newsletter {
            background: #eee;
        }

        .newsletter .content {
            max-width: 70rem;
            margin: 1rem auto;
            text-align: center;
        }

        .newsletter .content p {
            font-size: 1.5rem;
            line-height: 2;
            color: #10221b;
        }

        .newsletter .content form {
            margin-top: 2rem;
            background: #fff;
            border-radius: 5rem;
            border: 0.2rem solid #10221b;
            padding: .7rem;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
        }

        .newsletter .content form .email {
            width: 100%;
            background: none;
            text-transform: none;
            font-size: 1.6rem;
            color: #10221b;
            padding: 0 1.3rem;
        }

        .newsletter .content form .btn {
            margin-top: 0;
            border-radius: 5rem;
            background: #10221b;
            color: #fff;
        }

        .newsletter .content form .btn:hover {
            background: none;
            color: #10221b;
        }

        .clients .silde {
            text-align: center;
        }

        .clients .silde img {
            height: 12rem;
        }

        .footer {
            background-color: #2e2e2e;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        .footer .box-container {
            display: -ms-grid;
            display: grid;
             grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
            gap: 1.5rem;
        }

        .footer .box-container .box h3 {
            font-size: 2rem;
            padding: 1.5rem 0;
            color: #fff;
        }

        .footer .box-container .box a {
            display: block;
            font-size: 1.4rem;
            color: #fff;
            padding: 1rem 0;
        }

        .footer .box-container .box a i {
            color: #871e35;
            padding-right: .5rem;
        }

        .footer .box-container .box a:hover {
            color: #97a49d;
        }

        .footer .box-container .box a:hover i {
            padding-right: 2rem;
        }

        .footer .credit {
            text-align: center;
            margin-top: 2.5rem;
            padding: 1rem;
            padding-top: 2.5rem;
            font-size: 2rem;
            color: #fff;
        }

        .footer .credit span {
            color: #871e35;
        }

        @media (max-width: 1200px) {
            .header {
                padding: 2rem;
            }
            section {
                padding: 3rem 2rem;
            }
        }

        @media (max-width: 991px) {
            html {
                font-size: 55%;
                scroll-padding-top: 7rem;
            }
            .home .box {
                padding: 2rem;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                background-position: right !important;
            }
            .home .box.second {
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                background-position: left !important;
            }
            .home .box .content {
                text-align: center;
            }
            .home .box .content span {
                font-size: 3rem;
            }
            .home .box .content h3 {
                font-size: 4rem;
            }
        }

        @media (max-width: 768px) {
            .header #menu-btn {
                display: inline-block;
            }
            .header .navbar {
                position: fixed;
                top: 0;
                left: -110%;
                background: #fff;
                z-index: 10000;
                width: 35rem;
                height: 100%;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -ms-flex-flow: column;
                flex-flow: column;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
            }
            .header .navbar.active {
                left: 0;
                -webkit-box-shadow: 0 0 0 100vw rgba(0, 0, 0, 0.8);
                box-shadow: 0 0 0 100vw rgba(0, 0, 0, 0.8);
            }
            .header .navbar a {
                margin: 1rem 0;
                font-size: 3rem;
            }
            .header .navbar #nav-close {
                display: block;
                position: absolute;
                top: 1rem;
                right: 2rem;
            }
            .swiper-button-next::after,
            .swiper-button-prev::after {
                display: none;
            }
        }

        @media (max-width: 450px) {
            html {
                font-size: 50%;
            }
            .heading {
                font-size: 3rem;
            }
        }

        /* CSS to control the height of the slider container */

        .slider-container {
            height: 100%;
            margin-top: 100px;
            /* Adjust this value to your preference */
            overflow: hidden;
            /* Hide overflow content */
        }
        /* Ensure swiper container takes full height */

        .swiper {
            height: 100%;
        }

        .category {
            margin: 50px auto;
            max-width: 800px;
        }

        .heading {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .currency-converter {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .currency-selector {
            margin-bottom: 10px;
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
    </style>

</head>

<body>

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class=""></i> <img src="images/bmp-logo.png" width="130px" height="auto" /> </a>

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

</header>

<!-- header section ends -->

<!-- search form  -->

<div class="search-form">

    <div id="close-search" class="fas fa-times"></div>

    <form action="">
        <input type="search" name="" placeholder="search here..." id="search-box">
        <label for="search-box" class="fas fa-search"></label>
    </form>
</div>

<!-- home section starts  -->

<section class="home" id="home">
    <div class="slider-container">

        <div class="swiper home-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <div class="box" style="background: url(bankimages/27.jpg) no-repeat;">
                        <div class="content">

                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box second" style="background: url(bankimages/reward.jpg) no-repeat;">
                        <div class="content">

                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box" style="background: url(bankimages/card.jpeg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>


                <div class="swiper-slide">
                    <div class="box" style="background: url(bankimages/Visa.jpeg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="box" style="background: url(bankimages/ibn.jpg) no-repeat;">
                        <div class="content">
                        </div>
                    </div>
                </div>


                <div class="swiper-slide">
                    <div class="box" style="background: url(bankimages/bankmisr.jpg) no-repeat;">
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

<!-- home section ends -->

<!-- category section starts  -->





<!-- category section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <div class="image">
        <img src="bankimages/1600-banque-misr.jpg" alt="">
    </div>

    <div class="content">
        <h3 style="color: #871e35;">Banque Misr History </h3>
        <p> Banque Misr (BM) was established in 1920 by the pioneer economist and financial expert Mohamed Talaat Harb Pasha, who spearheaded the concept of investing in national savings and directing them toward economic and social development.</p>
        <p> Thus, Banque Misr was established as the first wholly Egyptian-owned bank. anque Misr has funded many businesses spanning across multiple domestic sectors, such as: textiles, insurance, transportation, aviation, entertainment, and filmmaking.</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>

<!-- about section ends -->

<!-- shop section starts  -->





<!-- shop section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">Admin  </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="bankimages/cards.png" alt="">
            </div>
            <div class="content">
                <h3>Customers </h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>

                <a href="Customers" class="btn">explore Customers </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="bankimages/cca.png" alt="">
            </div>
            <div class="content">
                <h3>Products</h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>
                <a href="#" class="btn">explore products</a>
            </div>
        </div>




    </div>

</section>

<!-- packages section ends -->

<!-- reviews section starts  -->



<!-- reviews section ends -->

<section class="category">

    <h1 class="heading" style="font-size: 40px; margin-bottom: 45px;">Exchange Rates </h1>

    <div class="currency-converter">
        <div class="currency-selector">
            <label for="fromCurrency">From:</label>
            <select id="fromCurrency">
                <option value="egyptian_pound">Egyptian Pound (EGP)</option>
                <option value="usd">US Dollar (USD)</option>
                <option value="euro">Euro (EUR)</option>
            </select>
        </div>
        <div class="currency-selector">
            <label for="toCurrency">To:</label>
            <select id="toCurrency">
                <option value="usd">US Dollar (USD)</option>
                <option value="euro">Euro (EUR)</option>
            </select>
        </div>
        <div class="amount-input">
            <label for="amount">Amount:</label>
            <input type="number" id="amount" placeholder="Enter amount">
        </div>
        <button onclick="convertCurrency()" style="margin-top: 10px;">Convert</button>
        <div class="result">
            <label for="convertedAmount">Result:</label>
            <input type="text" id="convertedAmount" readonly>
        </div>
    </div>

    <hr>

</section>

<!-- services section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> Our Latest News </h1>

    <div class="swiper blogs-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <img src="bankimages/Visa Protocol.jpeg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may </a>
                </div>
                <h3>Banque Misr Signs a Cooperation Protocol with Visa to Expand the Activity of Payments Made Through Bank Cards for Institutions and Companies </h3>
                <p>Within the framework of Banque Misr's keenness as a leading banking institution to provide services.</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/Visa-Protocol" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="bankimages/Financial inclusion banner.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 08th Apr</a>
                </div>
                <h4>Banque Misr actively participates in Arab Financial Inclusion Day and provides many complimentary benefits and promotions to support financial inclusion under the supervision of the Central Bank of Egypt.</h4>
                <p>Due to Banque Misr's commitment to supporting the government's efforts to achieve financial inclusion .</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/Arab-Financial-Inclusion-Day-2024" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="bankimages/inside page news (1).jpeg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 2nd Apr</a>
                </div>
                <h4>Banque Misr has reaffirmed its commitment to the real estate sector and its customers by renewing its cooperation protocol with the Social Housing and Mortgage Finance Fund, a move that aligns with the Central Bank of Egypt's initiatives.
                </h4>
                <p>Within the framework of Banque Misr'sMisr's keenness to contribute to achieving the state's goals of achievi</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/cooperation-protocol-with-the-Social-Housing-and-Real-Estate-Finance-Support-Fund" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="images/img-4.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here.</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit, deserunt.</p>
                <a href="#" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="images/img-5.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here.</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit, deserunt.</p>
                <a href="#" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="images/img-6.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here.</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit, deserunt.</p>
                <a href="#" class="btn">read more</a>
            </div>

        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- newsletter section  -->

<section class="newsletter">

    <div class="content">
        <h1 class="heading">subscirbe now</h1>
        <form action="">
            <input type="email" name="" placeholder="enter your email" id="" class="email">
            <input type="submit" style="background-color: #871e35; " value="subscirbe" class="btn">
        </form>
    </div>

</section>

<section class="clients">

    <div class="swiper clients-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide silde"><img src="images/client-logo-1.png" alt=""></div>
            <div class="swiper-slide silde"><img src="images/client-logo-2.png" alt=""></div>
            <div class="swiper-slide silde"><img src="images/client-logo-3.png" alt=""></div>
            <div class="swiper-slide silde"><img src="images/client-logo-4.png" alt=""></div>
        </div>
    </div>

</section>

<!-- footer section starts  -->

<section class="footer">

    <div>

        <img src="bankimages/bmp.png" />
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

<!-- footer section ends -->












<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>
    function convertCurrency() {
        // Get the selected currencies and amount
        var fromCurrency = document.getElementById("fromCurrency").value;
        var toCurrency = document.getElementById("toCurrency").value;
        var amount = parseFloat(document.getElementById("amount").value);

        // Define exchange rates
        var exchangeRates = {
            egyptian_pound: {
                usd: 47,
                euro: 51.3014
            },
            usd: {
                egyptian_pound: 1 / 47,
                euro: 1 / 1.2189
            },
            euro: {
                egyptian_pound: 1 / 51.3014,
                usd: 1.2189
            }
            // Add more exchange rates as needed
        };

        // Convert the amount
        var convertedAmount = amount * exchangeRates[fromCurrency][toCurrency];

        // Display the result
        document.getElementById("convertedAmount").value = convertedAmount.toFixed(2) + ' ' + toCurrency.toUpperCase();
    }
</script>
</script>
</body>

</html>