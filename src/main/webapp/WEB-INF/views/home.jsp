<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
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





<section class="packages" id="packages">
    <h1 class="heading">Retail Products</h1>
    <div class="box-container">
        <c:forEach var="category" items="${customercategory1}" varStatus="loop">
            <div class="box">
                <div class="image">
                    <img src="../resources/bankimages/cca${loop.index}.png" alt="">
                </div>
                <div class="content">
                    <h3>${category.name}</h3>
                    <p>${category.description}</p>
                    <a href="${pageContext.request.contextPath}/customer/products?categoryName=${category.name}&type=${"Retail"}" class="btn">Read more</a>
                </div>
            </div>
        </c:forEach>
    </div>
</section>



<!-- about section ends -->

<!-- shop section starts  -->








<%--<section class="shop" id="shop">--%>

<%--    <h1 class="heading">Corporate  Category </h1>--%>

<%--    <div class="swiper product-slider">--%>

<%--        <div class="swiper-wrapper">--%>

<%--            <c:forEach var="category" items="${customercategory2}">--%>
<%--                <div class="swiper-slides slide">--%>
<%--                    <div class="image">--%>
<%--                        <div class="icons">--%>
<%--                            <a href="#" class="fas fa-shopping-cart"></a>--%>
<%--                            <a href="#" class="fas fa-eye"></a>--%>
<%--                            <a href="#" class="fas fa-share"></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="content">--%>
<%--                        <h3>${category.name}</h3>--%>
<%--                        <p>${category.description}</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>








<%--        </div>--%>

<%--        <div class="swiper-button-next"></div>--%>
<%--        <div class="swiper-button-prev"></div>--%>

<%--    </div>--%>

<%--</section>--%>
<!-- shop section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">Corporate Products </h1>

    <div class="box-container">
        <c:forEach var="category" items="${customercategory2}" varStatus="loop">

            <div class="box">
                <div class="image">
                    <img src="../resources/bankimages/cca${loop.index}.png" alt="">
                </div>
                <div class="content">
                    <h3>${category.name}</h3>
                    <p>${category.description}</p>

                    <a href="${pageContext.request.contextPath}/customer/products?categoryName=${category.name}&type=${"Corporate"}" class="btn">Read more</a>
                </div>
            </div>
        </c:forEach>
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
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="SAR">saudi arabian riyal(EGP)</option>
                <option value="AED">United Arab Emirates Dirham (AED)</option>
                <option value="QAR">Qatari Riyal (QAR)</option>
                <option value="OMR">Omani Rial (OMR)</option>
                <option value="BHD">Bahraini Dinar (BHD)</option>
                <option value="KWD">Kuwaiti Dinar (KWD)</option>
                <option value="JOD">Jordanian Dinar (JOD)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="IQD">Iraqi Dinar (IQD)</option>
                <option value="YER">Yemeni Rial (YER)</option>
                <option value="SDG">Sudanese Pound (SDG)</option>


            </select>
        </div>
        <div class="currency-selector">
            <label for="toCurrency">To:</label>
            <select id="toCurrency">
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="SAR">saudi arabian riyal(EGP)</option>
                <option value="AED">United Arab Emirates Dirham (AED)</option>
                <option value="QAR">Qatari Riyal (QAR)</option>
                <option value="OMR">Omani Rial (OMR)</option>
                <option value="BHD">Bahraini Dinar (BHD)</option>
                <option value="KWD">Kuwaiti Dinar (KWD)</option>
                <option value="JOD">Jordanian Dinar (JOD)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="IQD">Iraqi Dinar (IQD)</option>
                <option value="YER">Yemeni Rial (YER)</option>
                <option value="SDG">Sudanese Pound (SDG)</option>

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

        <a href="/home/exchangerate" style="font-size: 16px; color:white; padding: 14px; border-radius: 8px; background-color: #695c5c" >go to exchangaae rate</a>

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
        var amount = parseFloat(document.getElementById("amount").value);
        var fromCurrency = document.getElementById("fromCurrency").value;
        var toCurrency = document.getElementById("toCurrency").value;

        // Fetch exchange rates for the selected currencies
        fetch('https://api.exchangerate-api.com/v4/latest/' + fromCurrency)
            .then(response => response.json())
            .then(data => {
                var toCurrencyRate = data.rates[toCurrency];
                var convertedAmount = amount * toCurrencyRate;
                document.getElementById("convertedAmount").value = convertedAmount.toFixed(2) + " " + toCurrency;
            })
            .catch(error => console.error('Error fetching data:', error));
    }
</script>

</body>

</html>