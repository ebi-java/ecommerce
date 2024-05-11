<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Product Admin Form</title>
    <script>
        function toggleCollapse(elementId) {
            var element = document.getElementById(elementId);
            if (element.style.display === "none") {
                element.style.display = "block";
                document.getElementById(elementId + "-icon").innerHTML = "&#8722;"; // Minus icon
            } else {
                element.style.display = "none";
                document.getElementById(elementId + "-icon").innerHTML = "+"; // Plus icon
            }
        }
    </script>

    <style>
        .collapse-content {
            display: none;
            padding: 10px;
            background-color: #f1f1f1;
            text-align: center; /* Center content horizontally */
        }
        .product-div {
            border: 2px solid #871e35;
            cursor: pointer;
            margin: 10px; /* Add margin */
            padding: 10px; /* Add padding */
        }
        .product-details {
            border: 2px solid #871e35;
            margin: 10px; /* Add margin */
            padding: 10px; /* Add padding */
            overflow-y: scroll;
        }
        .type-form {
            margin-left: 10%; /* Adjust left margin for the form */
            margin-bottom: 50px; /* Add margin to the bottom */
        }
    </style>
</head>
<body>
<nav class="navbar bg-body-tertiary mb-5 py-4" style="background-color:#871e35 !important;">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1" style="color: white">Product Panel</span>
    </div>
</nav>

<div class="type-form">
    <form action="/admin/product/products" method="get">
        <input style="background: #44373d; color: white; border-radius: 8px; padding: 10px;  width: 140px; border: none " type="submit" value="Retail" name="type">
        <input style="background: #98a09d; color: white; border: none; width: 140px; padding: 10px;  border-radius: 9px; margin-left: 10px;" type="submit" value="corporate" name="type">
        <a href="/admin/product/add"  style="background: #8d3c62; color: white; margin-left: 10px; border-radius: 8px; padding: 10px;  width: 122px; border: none; text-decoration: none " type="submit" value="Add Product" name="Add">Add Product</a>
    </form>
</div>

<c:forEach var="product" items="${products}">
    <div class="product-div" onclick="toggleCollapse('collapseItem-${product.id}')">
            ${product.name}
        <span id="collapseItem-${product.id}-icon" style="float:right;">+</span>
    </div>
    <div id="collapseItem-${product.id}" class="collapse-content">
        <div class="product-details">
            <img src="${product.image}" width="300px" height="300px" alt="">
        </div>
        <div class="product-details">
            <p style="width: 300px;height: 150px">${product.details}</p>
        </div>
        <div class="product-details">${product.duration}</div>
        <div class="product-details">${product.interestRate}</div>
        <div class="product-details">${product.categories.name}</div>
        <div><a href="${pageContext.request.contextPath}/admin/product/update/${product.id}" class="btn btn-secondary">Update</a></div>
        <div><a href="${pageContext.request.contextPath}/admin/product/delete/${product.id}" class="btn btn-danger">DELETE</a></div>
    </div>
</c:forEach>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
