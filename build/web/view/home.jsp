<%-- 
    Document   : index
    Created on : May 6, 2024, 7:19:52 PM
    Author     : hbtth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <!-- header -->
            <div class="header">
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
            <!-- Form xác thực -->
            <div class="validateform-bg hide">
  
            </div>
            <!-- Tìm kiếm -->
            <div class="search-bg hide">
                <div class="search-box">
                    <div class="close"><i class="bx bx-x"></i></div>
                    <div class="search">
                        <label for="search"><i class="bx bx-search"></i></label>
                        <input id="search" type="text" placeholder="Tìm kiếm ..." />
                    </div>
                    <div class="products">
                        <!-- các sản phẩm -->
                    </div>
                    <ul class="list-page-search"></ul>
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
            <!-- video -->
            <div class="video">
                <div>
                    <video autoplay controls loop>
                        <source
                            src="video/y2mate.com - Samsung Galaxy S22 Series  Thách Thức Mọi Quy Chuẩn_1080p.mp4"
                            type="video/mp4"

                            />
                        <p>Trình duyệt không hỗ trợ</p>
                    </video>
                </div>
            </div>
            <!-- slide show -->
            <div class="slide-show hide">
                <div class="main">
                    <div class="img-feature">
                        <a href="">
                            <img src="img/imgs/slideshow/slideshow1.jpg" />
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
            <!-- lọc -->
            <div class="filter">
                <!-- lọc theo giá -->
                <form action="home" method="post" name="ff">
                        
                            <select class="bx bx-chevron-right" name="filter" onchange="sortFunction()">
                                <option value ="0" ${choice == 0 ? 'selected':''}>Mức giá điện thoại</option>
                                <option value ="1" ${choice == 1 ? 'selected':''}>Dưới 2 triệu</option>
                                <option value ="2" ${choice == 2 ? 'selected':''}>Từ 2 - 4 triệu</option>
                                <option value ="3" ${choice == 3 ? 'selected':''}>Từ 4 - 7 triệu</option>
                                <option value ="4" ${choice == 4 ? 'selected':''}>Từ 7 - 13 triệu</option>
                                <option value ="5" ${choice == 5 ? 'selected':''}>Từ 13 - 20 triệu</option>
                                <option value ="6" ${choice == 6 ? 'selected':''}>Trên 20 triệu</option> 
                            </select>
                    </form>
            </div>
            <!-- Khung chứa các sản phẩm -->
            <div class="products grid wide">
                <div class="all-products row">
                    <!-- các sản phẩm -->
                    <c:forEach items="${list}" var="i">
                        <div class="product col l-3 m-4 c-6">
                            <div class="product-box">
                                <div class="product-img">
                                    <img src="img/${i.image}"  alt="lỗi ảnh"/>
                                </div>
                                <div class="product-info">
                                    <h3 class="product-title">${i.nameProduct}</h3>
                                    <div class="product-price">
                                        <p class="product-price-show">${FormatMoney.format(i.salePrice)}₫</p>
                                        <p class="product-price-origin">${FormatMoney.format(i.primePrice)}₫</p>
                                    </div>
                                    <a href="detail?id=${i.idProduct}" class="product-btn">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <ul class="list-page"></ul>
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
        </div>
    </body>
<script>
        function sortFunction(id){
            ff.submit();
        }
    </script>
</html>
