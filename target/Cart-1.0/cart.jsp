<%--
  Created by IntelliJ IDEA.
  User: vuxua
  Date: 27/09/2024
  Time: 7:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container">
        <h1 class="">Your cart</h1>
        <table class="table table-striped">
            <tr>
                <th class="align-middle">Quantity</th>
                <th class="align-middle">Description</th>
                <th class="text-right align-middle">Price</th>
                <th class="text-right align-middle">Amount</th>
                <th class="align-middle">&nbsp;</th>
            </tr>

            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td class="align-middle" >
                        <form  class="m-0 " action="" method="post">
                            <input type="hidden" name="productCode"
                                   value="<c:out value='${item.product.code}'/>">
                            <input type="number" name="quantity" style="width: 50px"
                                   value="<c:out value='${item.quantity}'/>" id="quantity">
                            <input class="btn btn-info " type="submit" value="Update">
                        </form>
                    </td>
                    <td class="align-middle"> <c:out value='${item.product.description}'/> </td>
                    <td class="text-right align-middle">${item.product.priceCurrencyFormat}</td>
                    <td class="text-right align-middle">${item.totalCurrencyFormat}</td>
                    <td class="align-middle">
                        <form class="m-0" action="" method="post">
                            <input type="hidden" name="productCode"
                                   value="<c:out value='${item.product.code}'/>">
                            <input type="hidden" name="quantity"
                                   value="0">
                            <input class="btn btn-danger" type="submit" value="Remove Item">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <p class="text-info"><b>To change the quantity</b>, enter the new quantity
            and click on the Update button.</p>

        <div class="container d-flex justify-content-between p-0">
            <form action="" method="post">
                <input type="hidden" name="action" value="shop">
                <input class="btn btn-info" type="submit" value="Continue Shopping">
            </form>

            <form action="" method="post">
                <input type="hidden" name="action" value="checkout">
                <input class="btn btn-primary" type="submit" value="Checkout">
            </form>
        </div>

    </div>
</body>
</html>
