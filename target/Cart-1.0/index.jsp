<%@ page import="murach.business.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: vuxua
  Date: 26/09/2024
  Time: 10:26 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>CD List</h1>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table class="table table-striped">
            <tr>
                <th>Description</th>
                <th class="text-right">Price</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td><c:out value='${product.description}'/></td>
                    <td class="text-right"><c:out value='${product.priceCurrencyFormat}'/></td>
                    <td><form action="cart" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                        <input class="btn btn-primary" type="submit" value="Add To Cart">
                    </form></td>
                </tr>
            </c:forEach>
        </table>

    </div>

</body>

</html>
