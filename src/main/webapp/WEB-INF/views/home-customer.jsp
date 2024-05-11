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

    <a href="#" class="logo"> <i class=""></i> <img src="../../resources/bankimages/bmp-logo%20(1).png" width="130px" height="auto" /> </a>

    <nav class="navbar">
        <div id="nav-close" class="fas fa-times"></div>
        <a href="#home">home</a>
        <a href="#about">about</a>

        <a href="http://localhost:8080/customer/exchangerate">Exchange Rate</a>
        <a href="#profile">Profile</a>
        <a href="http://localhost:8080/customer/login">logout</a>
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

<!-- home section ends -->

<!-- category section starts  -->





<!-- category section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <div class="image">
        <img src="../../resources/bankimages/1600-banque-misr.jpg" alt="">
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

<section class="shop" id="shop">

    <h1 class="heading">Retail Products </h1>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="../../resources/bankimages/accounts.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Accounts And Deposits </h3>

                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="../../resources/bankimages/loan.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Consumer Loans </h3>
                    <!-- <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div> -->
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="../../resources/bankimages/cards.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="https://www.banquemisr.com/Home/SMEs/Retail%20Banking/Pages/Cards" class="fas fa-eye"></a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>BM Cards </h3>

                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="../../resources/bankimages/vip.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-eye"></a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>BMVIP Banking Service </h3>

                </div>
            </div>


        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- shop section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">Corporate Products </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cards.png" alt="">
            </div>
            <div class="content">
                <h3>Companies Cards </h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>

                <a href="#" class="btn">Read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cca.png" alt="">
            </div>
            <div class="content">
                <h3>Corporate Banking Accounts and certificates</h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>
                <a href="#" class="btn">Read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cca2.png" alt="">
            </div>
            <div class="content">
                <h3>Trade Finance </h3>
                <p>At Banque Misr Trade Services, we don’t wait for the future to happen: we make it happen. Our business is defined not by innovation, but by reinvention. Across all three of our areas of specialization,</p>
                <a href="#" class="btn">Read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cca2.png" alt="">
            </div>
            <div class="content">
                <h3>Corporate Banking services
                </h3>
                <p>Become the partner of choice for wholesale clients, in Egypt and abroad, positioning clients’ needs at heart of our proposition and providing the best-in-class service by leveraging our digital solutions, the extensive branch network
                    as well as our strategic partnerships withing the Banque Misr eco-system and beyond.</p>
                <a href="#" class="btn">Read more</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cca4.png" alt="">
            </div>
            <div class="content">
                <h3>Corporate Customer Service </h3>
                <p>Banque Misr provides a corporate support service with the goal of providing a distinguished service to corporate clients and legal persons.

                </p>
                <a href="#" class="btn">Read more</a>
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
            <div class="swiper-slide silde"><img src="../../../../../../../Videos/project%20banq/project%20banq/images/client-logo-1.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../../../../../../Videos/project%20banq/project%20banq/images/client-logo-2.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../../../../../../Videos/project%20banq/project%20banq/images/client-logo-3.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../../../../../../Videos/project%20banq/project%20banq/images/client-logo-4.png" alt=""></div>
        </div>
    </div>

</section>

<!-- footer section starts  -->

<section class="footer">

    <div>

        <img src="../../resources/bankimages/bmp.png" />
    </div>


    <div class="box-container">

        <div class="box">
            <h3>Banque Misr </h3>
            <a href="#about">Responsible Banking</a>
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


    </div>


</section>

<!-- footer section ends -->












<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../../resources/js/script.js"></script>

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

</body>

</html>