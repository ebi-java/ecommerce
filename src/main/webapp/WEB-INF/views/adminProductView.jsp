<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Product Admin Form</title>
</head>
<body>
<!-- As a heading -->

<nav class="navbar bg-body-tertiary mb-5 py-4" style="background-color:#871e35 !important;">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1" style="color: white">Product Panel</span>
    </div>
</nav>

<div class="container">
    <div class="row">

        <div class="type">

            <form action="" method="get">
                <button type="submit" value="individual" name="type">


                </button>


                <button type="submit" value="corporate" name="type">


                </button>


            </form>

        </div>


        <div class="col-12">
            <table class="table" style="border:2px solid #871e35;">
                <thead style="border:2px solid #871e35; text-align: center">
                <tr>
                    <th style="border:2px solid #871e35;">ID</th>
                    <th style="border:2px solid #871e35;">Image</th>
                    <th style="border:2px solid #871e35;">Name</th>
                    <th style="border:2px solid #871e35;">Details</th>
                    <th style="border:2px solid #871e35;">Duration</th>
                    <th style="border:2px solid #871e35;">Interest Rate</th>
                    <th style="border:2px solid #871e35;">Category Name</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody style="border:2px solid #871e35;">
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td style="border:2px solid #871e35;">${product.id}</td>
                        <td style="border:2px solid #871e35;"><img src="${product.image}" width="300px" height="300px">
                        </td>
                        <td style="border:2px solid #871e35;">${product.name}</td>
                        <td style="border:2px solid #871e35;overflow-y: scroll;">
                            <p style="width: 300px;height: 150px">
                                    ${product.details}
                            </p>
                        </td>
                        <td style="border:2px solid #871e35;">${product.duration}</td>
                        <td style="border:2px solid #871e35;">${product.interestRate}</td>
                        <td style="border:2px solid #871e35;">${product.categories.name}</td>
                        <td><a href="${pageContext.request.contextPath}/admin/product/update/${product.id}"
                               class="btn btn-secondary">Update</a></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/admin/product/delete/${product.id}"
                               class="btn btn-danger">DELETE</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>