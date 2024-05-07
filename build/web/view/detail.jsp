<%-- 
    Document   : listproduct
    Created on : May 6, 2024, 8:23:31 PM
    Author     : hbtth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Hongo(Mobile)</title>
        <link rel="stylesheet" href="css/responsive.css" />
        <link rel="stylesheet" href="css/index.css" />
        <link rel="stylesheet" href="css/products.css" />
        <link rel="stylesheet" href="css/header.css" />
        <link rel="stylesheet" href="css/search.css" />
        <link rel="stylesheet" href="css/validateform.css" />
        <link rel="stylesheet" href="css/slide_show.css" />
        <link rel="stylesheet" href="css/footer.css" />
        <link rel="stylesheet" href="css/chitietsanpham.css" />
        <script
            src="https://kit.fontawesome.com/459a7e2db3.js"
            crossorigin="anonymous"
        ></script>
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
            />
        <link
            rel="shortcut icon"
            href="img/favicon/favicon-16x16.png"
            type="image/png"
            />
    </head>
    <body>

        <div class="container">
            <div class="header" style="top:0">
                <div class="grid wide">
                    <div class="logo">
                        <a href="home"><img src="img/imgs/logo.png" /></a>
                    </div>
                    <div class="brand animation-unline">
                        <a href="listproduct?id=1">APPLE</a>
                    </div>
                    <div class="brand animation-unline">
                        <a href="listproduct?id=2">SAMSUNG</a>
                    </div>
                    <div class="brand animation-unline">
                        <a href="listproduct?id=3">XIAOMI</a>
                    </div>
                    <div class="brand animation-unline">
                        <a href="listproduct?id=4">OPPO</a>
                    </div>
                    <div class="brand animation-unline">
                        <a href="listproduct?id=5">REALME</a>
                    </div>
                    <div class="search">
                        <a href="search"><i class="bx bx-search btn-search"></i></a>
                    </div>
                    <c:if test="${sessionScope.User != null}">
                        <div class="cart">
                            <a href="cart"><i class="bx bx-shopping-bag"></i></a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.User != null}">
                        <div class="user">
                            <p>${sessionScope.User.fullname}</p>
                            <a href="logout">logout</a>
                        </c:if>
                        <c:if test="${sessionScope.User == null}">
                            <div class="user">
                                <a href="login"><i class="bx bx-user"></i></a>

                            </c:if>

                        </div>

                    </div>
                </div>

                <!-- Menu các hãng -->
                <div class="menu-drop">
                    <div class="close"><i class="bx bx-x"></i></div>
                    <div class="item-menu">
                        <div class="brand animation-unline-tab">
                            <a href="">APPLE</a>
                        </div>
                        <div class="brand animation-unline-tab">
                            <a href="">SAMSUNG</a>
                        </div>
                        <div class="brand animation-unline-tab">
                            <a href="">XIAOMI</a>
                        </div>
                        <div class="brand animation-unline-tab">
                            <a href="">OPPO</a>
                        </div>
                        <div class="brand animation-unline-tab">
                            <a href="">REALME</a>
                        </div>
                    </div>
                </div>
                <!-- slide show -->
                <div class="slide-show">
                    <div class="main">
                        <div class="img-feature">
                            <a href="">
                                <img src="img/imgs/slideshow/slideshow1.jpg"/>
                            </a>
                            <a href="">
                                <img src="img/imgs/slideshow/slideshow2.jpg" />
                            </a>
                            <a href="">
                                <img src="img/imgs/slideshow/slideshow3.jpg" />
                            </a>
                            <a href="">
                                <img src="img/imgs/slideshow/slideshow4.jpg" />
                            </a>
                        </div>
                        <div class="control prev">❮</div>
                        <div class="control next">❯</div>
                    </div>
                    <!-- các nút chấm -->
                    <div class="list-dot">
                        <span class="dot active" onclick="dot(0)"></span>
                        <span class="dot" onclick="dot(1)"></span>
                        <span class="dot" onclick="dot(2)"></span>
                        <span class="dot" onclick="dot(3)"></span>
                    </div>
                </div>

                <!-- Chi tiết sản phẩm -->
                <div class="chitietsanpham grid wide">
                    <div class="hdchitietsanpham">
                        <p>
                            ${product.nameProduct}
                        </p>
                        <i class="fa-solid fa-star" style="color: #f59e0b"></i>
                        <i class="fa-solid fa-star" style="color: #f59e0b"></i>
                        <i class="fa-solid fa-star" style="color: #f59e0b"></i>
                        <i class="fa-solid fa-star" style="color: #f59e0b"></i>
                        <i class="fa-solid fa-star" style="color: #f59e0b"></i>
                    </div>
                    <div class="mainchitiet">
                        <div class="boxchitiet">
                            <img
                                src="img/${product.image}"
                                />
                            <div class="inforchitiet">
                                <p>Thông số kỹ thuật</p>  
                                <table class="tbthongsokithuat">
                                    <tr class="bgr">
                                        <td>Kích thước màn hình</td>
                                        <td>${product.screen_size}</td>
                                    </tr>
                                    <tr>
                                        <td>Công nghệ màn hình</td>
                                        <td>${product.screen_technology}</td>
                                    </tr>
                                    <tr class="bgr">
                                        <td>Camera sau</td>
                                        <td>
                                            ${product.rear_camera}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Camera trước</td>
                                        <td>${product.front_camera}</td>
                                    </tr>
                                    <tr class="bgr">
                                        <td>Chipset</td>
                                        <td>${product.chipset}</td>
                                    </tr>
                                    <tr>
                                        <td>Dung lượng RAM</td>
                                        <td>${product.ram_capacit}</td>
                                    </tr>
                                    <tr class="bgr">
                                        <td>Bộ nhớ trong</td>
                                        <td>${product.internal_storage}</td>
                                    </tr>
                                    <tr>
                                        <td>Pin</td>
                                        <td>${product.pin}</td>
                                    </tr>
                                    <tr class="bgr">
                                        <td>Thẻ SIM</td>
                                        <td>${product.sim_card}</td>
                                    </tr>
                                    <tr>
                                        <td>Hệ điều hành</td>
                                        <td>${product.os}</td>
                                    </tr>
                                    <tr class="bgr">
                                        <td>Độ phân giải màn hình</td>
                                        <td>${product.screen_resolution}</td>
                                    </tr>
                                    <tr>
                                        <td>Tính năng màn hình</td>
                                        <td>
                                            ${product.screen_features}
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="price-color">
                            <div class="hieuung">
                                <ul>
                                    <li style="--delay: -1.4s; --color: #ffff00"></li>
                                    <li style="--delay: -1.2s; --color: #76ff03"></li>
                                    <li style="--delay: -1s; --color: #f06292"></li>
                                    <li style="--delay: -0.8s; --color: #4fc3f7"></li>
                                    <li style="--delay: -0.6s; --color: #ba68c8"></li>
                                    <li style="--delay: -0.4s; --color: #f57c00"></li>
                                    <li style="--delay: -0.2s; --color: #673ab7"></li>
                                </ul>
                            </div>

                            <form action="detail" method="post" name="fff">
                                <select class="color" name="color">
                                    <option value="white">Trắng</option>
                                    <option value="blue">Xanh</option>
                                    <option value="black">Đen</option>
                                </select>
                                <input type="hidden" value="${product.idProduct}" name="id"> 
                                <div class="price">
                                    <!-- giá -->
                                    <p class="product-price-show">${FormatMoney.format(product.salePrice)}₫</p>
                                    <p class="product-price-origin">${FormatMoney.format(product.primePrice)}₫</p>
                                </div>

                                <div class="addgiohang">
                                    <p onclick="return fff.submit()">Thêm vào giỏ hàng</p>
                                    <i class="fa-solid fa-cart-plus" style="color: #dbdbdb"></i>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <div class="footer">
                <div class="ft-main">
                    <div class="ftlogo">
                        <img
                            src="https://hongo.themezaa.com/shoes/wp-content/uploads/sites/8/2018/12/white-logo@2x.png"
                            />
                    </div>
                    <div class="ftcontent">
                        <div class="ftchild">
                            <p>Tổng đài hỗ trợ miễn phí</p>
                            <ul class="list">
                                <li>gọi mua hàng <b>0344790185</b>(7h30 - 22h00)</li>
                                <li>gọi khiếu nại <b>0344790185</b>(7h30 - 21h00)</li>
                                <li>gọi bảo hành <b>0344790185</b>(7h30 - 21h00)</li>
                            </ul>
                        </div>
                        <div class="ftchild">
                            <p>Thông tin và chính sách</p>
                            <ul class="listhv">
                                <a href="dscuahang.html"><li>Danh sách cửa hàng</li></a>
                                <a href="chinhsachgiaohang.html"
                                   ><li>Chính sách giao hàng</li></a
                                >
                                <a href="chinhsachbaohanh.html"><li>Chính sách bảo hành</li></a>
                                <a href="dscuahang.html"><li>Dành cho đại lý</li></a>
                            </ul>
                        </div>
                        <div class="ftchild">
                            <p>Thông tin liên hệ</p>
                            <ul class="list">
                                <li>gmail liên hệ: cuongcaotien9a@gmail.com</li>
                                <li>Sdt: 0962385165</li>
                                <li>Địa chỉ: 273 An Dương Vương, P3, Quận 5, TPHCM</li>
                            </ul>
                        </div>
                    </div>
                    <div class="ftbot">
                        <p>2023 © Copyright HONGO. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
    </body>

    <script src="js/slideshow.js"></script>
</html>
