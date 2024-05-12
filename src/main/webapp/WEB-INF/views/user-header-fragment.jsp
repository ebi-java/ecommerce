<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../../resources/css/home.css">
    <title>product</title>
</head>
<body>
<header class="header">
    <a href="#" class="logo"> <i class=""></i> <img src="../../resources/bankimages/bmp-logo%20(1).png" width="130px" height="auto"/></a>
    <nav class="navbar">
        <div id="nav-close" class="fas fa-times"></div>
        <a href="${pageContext.request.contextPath}/customer/home">Home</a>
        <a href="${pageContext.request.contextPath}/customer/retail">Retail</a>
        <a href="${pageContext.request.contextPath}/customer/corporate">Corporate</a>
        <c:choose>
            <c:when test="${pageContext.request.userPrincipal.name != null}">
                <a href="${pageContext.request.contextPath}/customer/profile">Profile</a>
                <a href="${pageContext.request.contextPath}/customer/logout">Logout</a>
            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/customer/bank-miser-login">Login</a>
            </c:otherwise>
        </c:choose>
    </nav>
</header>
</body>
</html>