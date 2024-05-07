<%-- 
    Document   : cart
    Created on : May 6, 2024, 9:55:21 PM
    Author     : hbtth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Giỏ hàng</title>
        <link rel="stylesheet" href="css/giohang.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            />
        <link
            rel="shortcut icon"
            href="img/favicon/favicon-16x16.png"
            type="image/png"
            />
    </head>
<body>
    <div class="giohang-bg">
        <div class="boxgiohang">
            <div class="hdtop">
                <i class="fa-solid fa-arrow-left" onclick="back()"></i>
                <p>Giỏ hàng của bạn</p>


            </div>

            <!-- <p>Giỏ hàng của bạn đang trống</p> (Nếu không có sản phẩm trong giỏ) -->
            <div class="hdbt">Giỏ hàng</div>
            <div class="select">
                <input
                    type="hidden"
                    id="myCheckbox"
                    name="myCheckbox"
                    onchange="selectAll()"
                    />
                
                <p onclick="delete_array_product_cart()">
                    Xoá tất cả sản phẩm đã chọn
                </p>
            </div>
            <c:forEach items="${cart.getAllItemfromCart()}" var="i">
                <div class="boxproduct">
                    <img
                        src="img/${i.product.image}"
                        />
                    <div class="infor">
                        <p>${i.color}</p>
                        <p>${FormatMoney.format(i.product.salePrice)}₫ <s>${FormatMoney.format(i.product.primePrice)}₫</s></p>
                    </div>
                    <div class="thaotac">
                        <div class="trash" onclick="delete_product(${i.product.idProduct})"><i class="fa-regular fa-trash-can"></i></div>
                        <div class="addproduct">
                            <i class="fa-solid fa-minus" onclick="change_quantities(-1,${i.product.idProduct})"></i>
                            <input type="text" value="${i.totalProduct}" readonly />
                            <i class="fa-solid fa-plus" onclick="change_quantities(1,${i.product.idProduct})"></i>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="pay-bg">
            <div class="pay">
                <div class="sotienthanhtoan">
                    <p>Tổng tiền</p>
                    <p style="color: white; font-size: 28px">${FormatMoney.format(cart.getTotalMoney())}đ</p>
                </div>
                <form action="cart" method="post" name="f1">
                    <div class="muangay" onclick="onBuy()">Mua Ngay</div>
                </form>
                
            </div>
        </div>
    </div>
</body>
<script src="js/giohang.js"></script>
<script>
    function change_quantities(val,id){
        window.location = "process?id="+id+"&val="+val;
    }
    function onBuy(){
        f1.submit();
    }
    function delete_product(id){
        window.location = "delete?id="+id;
    }
</script>
</html>
