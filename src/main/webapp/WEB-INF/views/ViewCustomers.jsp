<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="admin-header-fragment.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Customers</title>

    <style>
        .confirm1{
            z-index: 1000;
            position: absolute;
            font-size: 20px;
            width: 25vw;
            padding: 15px;
            background: #eee;
            border-radius: 5px;
            border:solid #333 1px;
            box-shadow: 1px 1px 5px #ffffff;
            top:40%;
            right: 37.5%;
            display: none;
        }
        td {
            white-space: nowrap; /* Prevent wrapping */
        }

        form {
            display: inline-block; /* Make forms inline */
            margin-right: 5px; /* Add some space between buttons */
        }
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
            width: 200px;
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
            text-align: center;
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
        .message {
            position: fixed;
            top:5vh;
            left: 50%;
            width: fit-content;
            font-size: 18px;
            transform: translateX(-50%);
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            z-index: 9999;
        }

    </style>
</head>
<body>
<section id="about"  class="about">

    <a href="${pageContext.request.contextPath}/admin/add-customer"
       class="btn btn-primary mb-5 mx-auto" style="text-decoration:none; border-radius: 12px; width: 230px; color: #2e2e2e">Add New Customer</a>
    <div class="container-xxl">

        <table style="width: 1000px;text-align: center"  class="customer-table" >
            <thead>
            <tr style="font-size: 15px; text-align: center">
                <th >ID</th>
                <th>Username</th>
                <th>Name</th>
                <th>Type</th>
                <th>State</th>
                <th>Actions</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customers}">
                <tr style="font-size: 15px">
                    <td>${customer.id}</td>
                    <td>${customer.user.username}</td>
                    <td>${customer.name}</td>
                    <td>${customer.type}</td>
                    <td>${customer.state}</td>
                    <td>
                        <form class="update-form" action="/admin/update-customer"   style="display: inline;">
                            <input type="hidden" name="id" value="${customer.id}">
                            <button type="submit" class="update-btn" data-state="${customer.state}">Update state</button>
                        </form>


<%--                        <form action="/admin/delete-customer"  style="display: inline;">--%>
<%--                            <input type="hidden" name="sub_id" value="${customer.id}">--%>
<%--                            <button type="submit" class="delete-btn" >Delete</button>--%>
<%--                        </form>--%>
                        <form class="confirm1" id="${customer.id}" action="/admin/delete-customer"   >
                            <h2>Enter password</h2>
                            <input type="hidden" name="id" value="${customer.id}">
                            <input type="password" name="password" required style="display: block"/>
                            <button onclick="disappear('${customer.id}')" class="update-btn">Cancel</button>
                            <input type="submit" class="delete-btn" value="ok"/>
                        </form>
                        <button onclick="showConfirm('${customer.id}')" class="delete-btn">delete</button>

                            <%--                            <form action="/admin/add-account-customer"  style="display: inline;">--%>
                            <%--                                <input type="hidden" name="id" value="${customer.id}">--%>
                            <%--                                <button type="submit" class="update-btn">Add New Account</button>--%>
                            <%--                            </form>--%>
                        <form action="/admin/view-customer"  style="display: inline;">
                            <input type="hidden" name="id" value="${customer.id}">
                            <button type="submit" class="update-btn">View Customer</button>
                        </form>

                    </td>
                </tr>

            </c:forEach>
<%--            <div class ="confirm1" id="con">--%>

<%--                <form action="/admin/delete-customer"  style="display: inline;" >--%>
<%--                    <h2>Enter password</h2>--%>
<%--                    <input type="password" name="password" required style="display: block"/>--%>
<%--                    <input type="submit" class="delete-btn" value="ok"/>--%>
<%--                </form>--%>

            </div>

            </tbody>
        </table>

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
    function showConfirm(id){
        var conf =document.getElementById(id);
        conf.style.display='block';
    }
    function disappear(id) {
        var routes =document.getElementById(id);
        routes.style.display='none';
    }
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
<script>
    function showMessage() {
        if(${message})
        var message = document.createElement('div');
        message.classList.add('message');
        message.textContent = "successfully added.\nAccount number: ${accountNubmer}";


        document.body.appendChild(message);

        setTimeout(function() {
            message.style.display = 'none';
        }, 3000); // 3000 milliseconds = 3 seconds
    }
    showMessage();
</script>
</body>

</html>