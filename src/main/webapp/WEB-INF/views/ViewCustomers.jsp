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



    <style>




        .customer-table {
            margin: 20px 350px; /* Center the table horizontally and provide 20px margin at the top */
            width: calc(100% - 40px); /* Set width to 100% of the container minus 40px (20px margin on each side) */
            max-width: 400px; /* Set maximum width to 400px */
            height: auto;
            border-collapse: collapse;
        }

        .customer-table th,
        .customer-table td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .customer-table th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
        }

        .customer-table tbody tr:hover {
            background-color: #f5f5f5;
        }


        /* Footer styles */
        .footer {
            background-color: #333; /* Background color of the footer */
            color: #fff; /* Text color */
            padding: 50px 0; /* Padding at the top and bottom */
        }

        .footer img {
            width: 150px; /* Adjust the width of the logo image */
        }

        .box-container {
            display: flex; /* Display boxes in a row */
            justify-content: space-between; /* Space out boxes evenly */
            flex-wrap: wrap; /* Wrap boxes to next line if needed */
        }

        .box {
            width: 250px; /* Set width of each box */
        }

        .box h3 {
            color: #fff; /* Color of box headings */
            margin-bottom: 20px; /* Margin below box headings */
        }

        .box a {
            display: block; /* Display links as block elements */
            color: #ccc; /* Color of links */
            margin-bottom: 10px; /* Margin below each link */
            text-decoration: none; /* Remove default underline */
        }

        .box a:hover {
            color: #fff; /* Change link color on hover */
        }

        .box i {
            margin-right: 10px; /* Margin between icon and text */
        }



        .delete-btn {
            padding: 6px 12px;
            margin-right: 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #871e35;
            color: white;
            font-size: 14px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition-duration: 0.4s;
        }
        .update-btn
          {
            padding: 6px 12px;
            margin-right: 5px;
            border: none;
            margin-bottom: 12px;
            border-radius: 4px;
            cursor: pointer;
            background-color: #4CAF50; /* Green */
            color: white;
            font-size: 14px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition-duration: 0.4s;
        }

        .update-btn:hover,
        .delete-btn:hover {
            background-color: #45a049; /* Darker green on hover */
        }


    </style>

</head>

<body>

<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class=""></i> <img src="../../resources/images/bmp-logo.png" width="130px" height="auto" /> </a>

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

<div style="margin-top: 100px"></div>

<!-- home section starts  -->


<!-- home section ends -->

<!-- category section starts  -->



<section id="about" class="about">


    <div class="box-container">

        <div class="box">
            <table class="customer-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Username</th>
                    <th>Actions</th> <!-- New column for buttons -->
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.id}</td>
                        <td>${customer.name}</td>
                        <td>${customer.type}</td>
                        <td>${customer.username}</td>
                        <td>

                            <form action="update-customer/${customer.id}" method="get" style="display: inline;">
                                <button type="submit" class="update-btn">Update</button>
                            </form>



                            <form action="/delete-customer" method="delete" style="display: inline;">
                                <input type="hidden" name="id" value="${customer.id}">
                                <button type="submit" class="delete-btn">Delete</button>
                            </form>

                            <!-- Update button -->
<%--                            <button class="update-btn">Update</button>--%>
<%--                            <!-- Delete button -->--%>
<%--                            <button class="delete-btn">Delete</button>--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

    </div>

</section>


<!-- category section ends -->

<!-- about section starts  -->

 <!-- services section ends -->

<!-- blogs section starts  -->


<!-- blogs section ends -->

<!-- newsletter section  -->




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