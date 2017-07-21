<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--
  Created by IntelliJ IDEA.
  User: Bartek
  Date: 18/07/2017
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>

<c:choose>
    <c:when test="${product==null}">
        Product not found
        <br/>
    </c:when>
    <c:otherwise>
        <h2>Submitted Employee Information</h2>
        <table>

            <tr>
                <td>Name :</td>
                <td>${product.name}</td>
            </tr>
            <tr>
                <td>ID :</td>
                <td>${product.id}</td>
            </tr>
            <tr>
                <td>Manufacturer :</td>
                <td>${product.manufacturer}</td>
            </tr>
        </table>
        <br/>
    </c:otherwise>
</c:choose>

</body>