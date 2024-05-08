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


</head>

<body>

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo">
        <i class=""></i>
        <img src="../../resources/images/bmp-logo.png" width="130px" height="auto" /> </a>

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





<!-- shop section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">Admin  </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cards.png" alt="">
            </div>
            <div class="content">
                <h3>Customers </h3>
                <p> The Express Business Account is the first step to managing the business of individual business</p>

                <a href="Customers" class="btn">explore Customers </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="../../resources/bankimages/cca.png" alt="">
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
                <img src="../../resources/bankimages/Visa Protocol.jpeg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may </a>
                </div>
                <h3>Banque Misr Signs a Cooperation Protocol with Visa to Expand the Activity of Payments Made Through Bank Cards for Institutions and Companies </h3>
                <p>Within the framework of Banque Misr's keenness as a leading banking institution to provide services.</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/Visa-Protocol" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="../../resources/bankimages/Financial inclusion banner.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 08th Apr</a>
                </div>
                <h4>Banque Misr actively participates in Arab Financial Inclusion Day and provides many complimentary benefits and promotions to support financial inclusion under the supervision of the Central Bank of Egypt.</h4>
                <p>Due to Banque Misr's commitment to supporting the government's efforts to achieve financial inclusion .</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/Arab-Financial-Inclusion-Day-2024" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="../../resources/bankimages/inside page news (1).jpeg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 2nd Apr</a>
                </div>
                <h4>Banque Misr has reaffirmed its commitment to the real estate sector and its customers by renewing its cooperation protocol with the Social Housing and Mortgage Finance Fund, a move that aligns with the Central Bank of Egypt's initiatives.
                </h4>
                <p>Within the framework of Banque Misr'sMisr's keenness to contribute to achieving the state's goals of achievi</p>
                <a href="https://www.banquemisr.com/en/Home/ABOUT-US/News/cooperation-protocol-with-the-Social-Housing-and-Real-Estate-Finance-Support-Fund" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="../../resources/images/img-4.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here.</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit, deserunt.</p>
                <a href="#" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="../../resources/images/img-5.jpg" alt="">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> 21st may, 2021 </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>blog title goes here.</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit, deserunt.</p>
                <a href="#" class="btn">read more</a>
            </div>

            <div class="swiper-slide slide">
                <img src="../../resources/images/img-6.jpg" alt="">
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
            <div class="swiper-slide silde"><img src="../../resources/images/client-logo-1.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../resources/images/client-logo-2.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../resources/images/client-logo-3.png" alt=""></div>
            <div class="swiper-slide silde"><img src="../../resources/images/client-logo-4.png" alt=""></div>
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
</script>
</body>

</html>