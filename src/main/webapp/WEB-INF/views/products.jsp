<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bartek
  Date: 7/21/2017
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<c:forEach items="${list}" var="product">
    <tr>
        <td>Name :</td>
        <td>${product.name}</td>
        <td>Manufacturer :</td>
        <td>${product.manufacturer}</td>
    </tr>
</c:forEach>

</body>
</html>
