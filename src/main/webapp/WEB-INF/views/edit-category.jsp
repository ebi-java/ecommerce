<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${category.name}</title>
</head>
<body>
<%--@elvariable id="category" type=""--%>
<form:form action="${pageContext.request.contextPath}/categories/processCategory" modelAttribute="category">
    <form:input path="id" readonly="true"/>

    <form:input path="name" type="text" placeholder = "${category.name}"/>

    <form:input path="description" type="text" placeholder = '${category.description}'/>

    <form:input path="type" type="text" placeholder = '${category.type}'/>

    <input type="submit" name="Submit"/>
</form:form>
</body>
</html>