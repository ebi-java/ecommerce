<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<jsp:include page="user-header-fragment.jsp"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Request Sent</title>
</head>
<body>
<div class="container">
    <h1>Request Sent</h1>
    <p>Your request has been sent and is awaiting administration approval. It may take up to 2 business days.</p>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/home">Back to home page</a>
</div>
</body>
</html>