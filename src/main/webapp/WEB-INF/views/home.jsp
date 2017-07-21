<%--
  Created by IntelliJ IDEA.
  User: Bartek
  Date: 7/18/2017
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>second page</title>
</head>
<body>
<h2>Product info:</h2>
<form:form method="POST" action="/add" modelAttribute="product">
    <table>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="manufacturer">Manufacturer</form:label></td>
            <td><form:input path="manufacturer"/></td>
        </tr>
        <tr>
            <td hidden><form:input path="id"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>