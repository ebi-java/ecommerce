<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <title>Admin - View Customer</title>
    <style>

        .customer-table {
            margin: auto;
            width: 100%;
            border-collapse: collapse;
        }

        .customer-table th,
        .customer-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .customer-table th {
            background-color: #f2f2f2;
        }

        .customer-table tbody tr:hover {
            background-color: #f5f5f5;
        }

        /* Button styles */
        .action-btn {
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            text-align: center;
            text-decoration: none;
            transition-duration: 0.4s;
        }

        .update-btn {
            background-color: #4CAF50;
            color: white;
            margin-right: 5px;
        }

        .delete-btn {
            background-color: #871e35;
            color: white;
            margin-left: 5px;
        }

        .action-btn:hover {
            background-color: #45a049;
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



        .delete-btn ,.update-btn{
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

        <!-- Add CSS styles for the table, navbar, and footer -->
        <style>
             /* Table styles */
         .customer-table {
             margin: 20px auto;
             width: 90%; /* Change the width percentage as needed */
             border-collapse: collapse;
         }



        .customer-table th,
        .customer-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .customer-table th {
            background-color: #f2f2f2;
        }

        .customer-table tbody tr:hover {
            background-color: #f5f5f5;
        }


        /* Footer styles */
        .footer {
            background-color: #333;
            color: #fff;
            padding: 50px 0;
            text-align: center;
        }

        .footer img {
            width: 150px;
            margin-bottom: 20px;
        }

        .box-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .box {
            width: 200px;
            margin-bottom: 30px;
        }

        .box h3 {
            color: #fff;
            margin-bottom: 20px;
        }

        .box a {
            display: block;
            color: #ccc;
            margin-bottom: 10px;
            text-decoration: none;
        }

        .box a:hover {
            color: #fff;
            text-decoration: underline;
        }

        .box i {
            margin-right: 10px;
        }
    </style>
    </style>
</head>
<body>
<div class="container-xxl" style="margin-bottom: 200px;">
    <p style="font-size: 25px">
        ${customer.name}
    </p>
    <form action="${pageContext.request.contextPath}/admin/add-account-page"  style="display: inline;">
        <input type="hidden" name="custID" value="${customer.id}">
        <button type="submit" class="update-btn">Add New Account</button>
    </form>
    <table class="customer-table">
        <thead>
        <tr>
            <th>Account Number</th>
            <th>Account Type</th>
            <th>Balance</th>
            <th>Creation Date</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="account" items="${customer.accounts}">
            <tr>
                <td>${account.accountNumber}</td>
                <td>${account.type}</td>
                <td>${account.balance}</td>
                <td>${account.creationDate}</td>
                <td>
                    <form action="/admin/delete-account"  style="display: inline;">
                        <input type="hidden" name="accNO" value="${account.accountNumber}">
                        <input type="hidden" name="id" value="${customer.id}">
                        <button type="submit" class="delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
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