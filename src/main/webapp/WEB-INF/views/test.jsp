<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test abc</title>
</head>
<body>
<h1>Hello</h1>
<ul>
<c:forEach var="num" items="${numbers}">
    <li>${num}</li>
</c:forEach>
</ul>
</body>
</html>