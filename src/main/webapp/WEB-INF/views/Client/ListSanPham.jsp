<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clone - Áo thun thời trang chính hãng, cao cấp hàng hiệu, Giá tốt</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
<div class="wrapper">
    <div class="main-header-wrapper">
        <div id="top-nav" class=" container d-flex">
            <ul class="top-nav-left d-flex">
                <li><a href=""> Tin tức | </a></li>
                <li><a href=""> Affiliate | </a></li>
                <li><a href=""> Hàng hiệu giảm đến 50% </a></li>
            </ul>

            <ul class="top-nav-right d-flex">
                <li><a href=""> Tạo shop </a></li>
                <li><a href=""> Tài khoản </a></li>
                <li class="icon-cart"><a href="/gio-hang"> Giỏ hàng <i class="fa-solid fa-bag-shopping"></i> </a></li>

            </ul>

        </div>
    </div>

    <header id="site-header">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="contact d-flex justify-content-start">
                <svg class="message" _ngcontent-ng-c4167518787="" fill="#161616" height="36" viewBox="0 0 32 32"
                     width="36" xmlns="http://www.w3.org/2000/svg">
                    <path _ngcontent-ng-c4167518787=""
                          d="M23.07,17.73V6.3c0-0.6-0.49-1.09-1.09-1.09H4.92c-0.6,0-1.09,0.49-1.09,1.09v11.88c0,0.6,0.49,1.09,1.09,1.09   h2.91l-0.05,5.04l7.73-5.08l6.11-0.04C22.42,19.18,23.07,18.53,23.07,17.73z M15.11,17.91l-6,3.94l0.04-3.9H5.14V6.52h16.61v11.21   c0,0.08-0.06,0.14-0.14,0.14L15.11,17.91z"
                          id="Shape"></path>
                    <rect _ngcontent-ng-c4167518787="" height="1.32" width="10.94" x="7.86"
                          xmlns="http://www.w3.org/2000/svg" y="9.91"></rect>
                    <rect _ngcontent-ng-c4167518787="" height="1.31" width="8.76" x="7.86"
                          xmlns="http://www.w3.org/2000/svg" y="12.98"></rect>
                    <path _ngcontent-ng-c4167518787=""
                          d="M26.68,7.94h-1.65v1.31h1.65c0.1,0,0.18,0.08,0.18,0.18V20.8c0,0.1-0.08,0.18-0.18,0.18h-4.04v3.04l-3.66-2.99   h-3.24v1.31h2.77l5.45,4.45V22.3h2.72c0.83,0,1.5-0.67,1.5-1.5V9.44C28.17,8.62,27.5,7.94,26.68,7.94z"
                          id="Shape"></path>
                </svg>
                <div class="d-flex flex-column">
                        <span>
                            Hotline: 093.934.8888
                        </span>
                    <span>
                            Tổng đài: 1900 232322
                        </span>
                </div>
            </div>

            <div class="logo-header">
                <img src="../images/logo.svg"
                     alt="Vua Hàng Hiệu™ - Mua hàng hiệu chính hãng trực tuyến, Giá Tốt Nhất">
            </div>
            <div class="search-nav">
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Tìm kiếm trên Vua Hàng Hiệu"
                           aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </header>
    <nav id="site-navigation">
        <div class="container main-menu">
            <ul class="menu d-flex flex-row justify-content-between">
                <li><a href="">Thương hiệu</a></li>
                <li><a href="">Đồng hồ</a></li>
                <li><a href="">Túi xách</a></li>
                <li><a href="">Nước hoa</a></li>
                <li><a href="">Mỹ phẩm</a></li>
                <li><a href="">Giày</a></li>
                <li onmouseover="myOverFunction()" onmouseout="myOutFunction()"><a>Thời trang</a></li>
                <li><a href="">Mũ nón</a></li>
                <li><a href="">Kính mắt</a></li>
                <li><a href="">Son môi</a></li>
                <li><a href="">Trang sức</a></li>
                <li><a href="">Trang điểm</a></li>
            </ul>
        </div>

    </nav>
    <div id="drop-menu" class="hidden" onmouseover="myOverFunction()" onmouseout="myOutFunction()">
        <div class="container d-flex">
            <div class="brand-1">
                <h5 class="text-uppercase">Thương hiệu nổi bật</h5>
                <ul class="list-brand-1">
                    <li><a href="">MLB</a></li>
                    <li><a href="">Gucci</a></li>

                    <li><a href="">Lacoste</a></li>
                    <li><a href="">Giovanni</a></li>

                    <li><a href="">Life Work</a></li>
                    <li><a href="">Adidas</a></li>

                    <li><a href="">Nike</a></li>
                    <li><a href="">Puma</a></li>

                    <li><a href="">Calvin Klein</a></li>
                    <li><a href="">Versace</a></li>

                    <li><a href="">Burberry</a></li>
                    <li><a href="">Moschino</a></li>

                </ul>
            </div>
            <div class="brand-2">
                <ul class="list-brand-2">
                    <li><a href="">Dsquared2</a></li>
                    <li><a href="">Alexander McQueen</a></li>

                    <li><a href="">ADLV</a></li>
                    <li><a href="">Bape</a></li>

                    <li><a href="">Hermes</a></li>
                    <li><a href="">Hollister</a></li>

                    <li><a href="">Marcelo Burlon</a></li>
                    <li><a href="">Off White</a></li>

                    <li><a href="">PGM</a></li>
                    <li><a href="">TriumPH</a></li>

                    <li><a href="">Stretch Angels</a></li>
                    <li><a href="">Corel V.</a></li>

                </ul>
            </div>

            <div class="sandal">
                <h5 class="text-uppercase">Dép chính hãng</h5>
                <ul class="list-sandal">
                    <li><a href="">Thời trang nam</a></li>
                    <li><a href="">Thời trang nữ </a></li>

                    <li><a href="">Thời trang trẻ em </a></li>
                    <li><a href="">Thời trang Unisex </a></li>

                </ul>
            </div>

            <div class="fashion-style">
                <h5 class="text-uppercase">Kiểu dáng thời trang</h5>
                <ul class="list-fashion-style">
                    <li>Quần - Áo - Váy - Đồ lót</li>
                    <li><a href="">Áo sơ mi</a></li>

                    <li><a href="">Áo thun</a></li>
                    <li><a href="">Áo polo</a></li>

                    <li><a href="">Váy</a></li>
                    <li><a href="">Quần lót</a></li>

                    <li><a href="">Áo ngực</a></li>
                    <li>Thời trang hè</li>

                    <li><a href="">Áo phông</a></li>
                    <li><a href="">Áo sơ mi Nam</a></li>

                    <li><a href="">Bikini</a></li>

                </ul>
            </div>

            <div class="fashion-accessory">
                <h5 class="text-uppercase">Phụ kiện thời trang</h5>
                <ul class="list-fashion-accessory">
                    <li>Mũ nón</li>
                    <li><a href="">Mũ NY Yankees MLB</a></li>
                    <li><a href="">Mũ Gucci</a></li>
                    <li><a href="">Mũ Lacoste</a></li>

                    <li>Thắt lưng</li>
                    <li><a href="">Thắt lưng Giovanni</a></li>
                    <li><a href="">Thắt lưng Louis Vuiton</a></li>
                    <li><a href="">Thắt lưng Gucci</a></li>
                    <li><a href="">Thắt lưng Lacoste</a></li>


                    <li><a href="">Cà vạt</a></li>


                </ul>
            </div>
        </div>

    </div>
    <div class="filter-and-list-product-T-shirt container">
        <form action="/list-san-pham/filter" method="get">
            <div class="filter">

                <div class="filter-scroll">
                    <p>Thương hiệu</p>
                    <input type="text" placeholder="Tìm kiếm thương hiệu">
                    <ul class="list-filter-scroll">
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Versace</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">MLB</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Adidas</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Lacoste</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Gucci</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Calvin Klein</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nike</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand"> Dolce & Gabbana </span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Burberry</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Tommy Hilfiger</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Michael Kors</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Puma</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Moschino</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Louis Vuitton</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hugo Boss</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Carrera Jeans</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Ralph Lauren</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">DSquared2</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Acmé De La Vie</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Karl Lagerfeld</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Kenzo</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Givenchy</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">LifeWork</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Anta</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Fila</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Diesel</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Reebok</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">DKNY</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Converse</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Le Coq Sportif</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Alexander Mcqueen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Levi's</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">13 De Marzo</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Marcelo Burlon</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Fendi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">The North Face</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nerdy</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Thom Browne</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Roberto Cavalli</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xexymix</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Abercrombie & Fitch</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Under Armour</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Palm Angels</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Dockers</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Dickies</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">True Religion</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Drew House</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Badblood</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bidi Badu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Speedo</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Marine Serre</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                    </ul>
                </div>

<%--                <div class="filter-sex">--%>
<%--                    <p>Giới tính</p>--%>

<%--                    <ul class="list-filter-sex">--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-sex">Nam</span>--%>

<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-sex">Nữ</span>--%>

<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-sex">Unisex</span>--%>

<%--                        </li>--%>

<%--                    </ul>--%>
<%--                </div>--%>

                <div class="filter-scroll">
                    <p>Kiểu dáng</p>
                    <input type="text" placeholder="Tìm kiếm kiểu dáng">
                    <ul class="list-filter-scroll" >
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Polo</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo phông</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo khoác</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox"  value="Áo sơ mi" name="kieuDang">
                            <span class="name-brand">Áo sơ mi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox"  value="Áo thun" name="kieuDang">
                            <span class="name-brand" >Áo thun</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần shorts</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Khuyên tai</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ thể thao</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần lót</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo nỉ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần Jeans</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Hoodie</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo len</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Khăn quàng cổ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần dài</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Tất</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần kaki</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo khoác vũ lông</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo cộc tay</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cardigan</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo dài tay</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo lót</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy Polo</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo gió</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Bomber</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần Jogger</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Chân váy</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo ngực</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy suông</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Khăn phụ kiện</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo da</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cà vạt</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo nỉ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần tây</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo ba lỗ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần thể thao</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo ghi lê</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Croptop</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo thun cổ bé</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Golf</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Găng tay</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo vest</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần legging</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần Golf</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ bikini</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo bra</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy Golf</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo giữ nhiệt</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo bơi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy liền</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần tập</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần bơi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy xòe</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo sơ mi bò</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đầm ngủ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo Măng Tô</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy body</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đầm body</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Set body</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Slim Fit: ôm gọn vào cơ thể</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo dài tay</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo bóng đá</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Set áo váy</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ vest</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo hai dây</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy chữ A</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo sơ mi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo dài</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy bơi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo ngủ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần ống rộng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bộ quần áo bò/denim</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần bikini</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bodysuit</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo choàng tắm</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo cộc tay</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Áo tập</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Váy Tennis</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần yếm</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Gen nịt bụng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Dáng dài</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần lửng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cúp tam giác</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Set bơi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Kimono</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần gió</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Quần Pijama</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>

                    </ul>
                </div>

<%--                <div class="filter-scroll">--%>
<%--                    <p>Xuất xứ</p>--%>
<%--                    <input type="text" placeholder="Tìm kiếm xuất xứ">--%>
<%--                    <ul class="list-filter-scroll">--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Mỹ</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Pháp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Ý</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Hàn quốc</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Đức</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Anh</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Nhật bản</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Việt Nam</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Thụy Điển</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Thụy Sỹ</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Tây Ban Nha</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Trung Quốc</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Hà Lan</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Ba Lan</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Úc</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Argentina</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Hy Lạp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Bỉ</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>





                <div class="filter-scroll">
                    <p>Màu sắc</p>
                    <input type="text" placeholder="Tìm kiếm màu sắc">
                    <ul class="list-filter-scroll">
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh navy</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Bạc</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xám</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Phối màu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Vàng hồng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen trắng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ gạch</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ tươi</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ cam</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ đất</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh Blue</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh Green</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng đất</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Be</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen xám</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng nhạt</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Vàng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng, đen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng kem</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cam</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ nâu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Kem</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ hồng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng Nude</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng - Xanh</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh , trắng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh dương</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cam đất</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Tím</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen - vàng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh Đen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh lá</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu, đen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng đào</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xám, đen</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh đậm</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng cam</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ mận</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cam đỏ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh bạc</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh nhạt</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh xám</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Beige</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu nhạt</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng đậm</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng - đỏ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu đậm</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xám trắng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu/Be</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh than</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen, nâu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Cam san hô</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu trắng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh rêu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Hồng san hô</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đen đỏ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng phối xanh</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng - Xám</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng - Hồng</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Xanh Olive</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Đỏ rượu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Trắng sữa</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nâu đỏ</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">Nhiều màu</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>

                    </ul>
                </div>

<%--                <div class="filter-scroll">--%>
<%--                    <p>Chất liệu</p>--%>
<%--                    <input type="text" placeholder="Tìm kiếm chất liệu">--%>
<%--                    <ul class="list-filter-scroll">--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da cao cấp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">100% Cotton</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">100% Polyester</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Cao su</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Cotton</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Vải cao cấp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da nhân tạo</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Vải dệt</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Cotton/Polyester</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Polyester</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da + Vải cao cấp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Canvas</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da/Vải</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Chất liệu tổng hợp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da lộn</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Vải lưới</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Da bò</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">100% Polyeste</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Cotton, Elastane</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Len</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Vải và da</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Polyester, Nylon</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Cotton, polyurethane</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Polyester, Elastane</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Vải lưới cao cấp</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <span class="name-brand">Polyester, Cotton</span>--%>
<%--                            <span class="quantity-in-stock">(99)</span>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>

                <div class="filter-scroll">
                    <p>Size thời trang</p>
                    <input type="text" placeholder="Tìm kiếm size">
                    <ul class="list-filter-scroll">
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">M</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">S</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">L</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>

                        <li>
                            <input type="checkbox">
                            <span class="name-brand">XL</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>
                        <li>
                            <input type="checkbox">
                            <span class="name-brand">XXL</span>
                            <span class="quantity-in-stock">(99)</span>
                        </li>

                    </ul>
                </div>


                <div class="filter-scroll ">
                    <p>Khoảng giá</p>
                    <div class="filter-by-price">
                        <input type="text" placeholder="₫ Từ">
                        <span>--</span>
                        <input type="text" placeholder="₫ Đến">

                    </div>
                    <button type="submit" class="button-filter-price">Áp dụng</button>
                </div>
            </div>
        </form>


        <div class="list-product-T-shirt ">
            <div class="list-product">
                <c:forEach items="${listSP}" var="ctsp">

                    <div class="item">
                        <div class="image-name-product">
                            <a href="/gio-hang/${ctsp.id}">
                                <img class="image-product" src="../images/${ctsp.sanPham.anh_san_pham}">
                                <span class="name-product"> ${ctsp.sanPham.ten_san_pham}</span>
                            </a>
                        </div>
                        <div class="price">
                            <i class="new-price">
                                <fmt:formatNumber value=" ${ctsp.gia_ban}" pattern="#,##0 đ"/>
                            </i>
                            <i class="sale-price"> 4.500.000 đ </i>
                        </div>
                    </div>


                </c:forEach>
            </div>
            <div class="paging mt-3">
                <c:if test="${totalPages > 1}">

                    <div>
                        <c:choose>
                            <c:when test="${currentPage > 1}">
                                <a href="/pageSP/${currentPage - 1}" class="button-prev">Previous</a>
                            </c:when>
                            <c:otherwise>
                                <span class="text-prev">Previous</span>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div style="max-width: 650px">
                        <c:forEach var="i" begin="1" end="${totalPages}">
                            <c:choose>

                                <c:when test="${i <= 3 or i > (totalPages - 3)}">
                                    <c:choose>
                                        <c:when test="${currentPage != i}">
                                            <a style="    background-color: lightgray;
                                                        color: black;
                                                        color: black;
                                                        border-radius: 5px;" href="/pageSP/${i}" class="button-page">${i}</a>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="text-page">${i}</span>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>

                                <c:otherwise>
                                    <c:if test="${i == 4}">
                                        <span style="color: black">...</span>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>

                    <div>
                        <c:choose>
                            <c:when test="${currentPage < totalPages}">
                                <a href="/pageSP/${currentPage + 1}" class="button-next">Next</a>
                            </c:when>
                            <c:otherwise>
                                <span class="text-next">Next</span>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </c:if>
            </div>
        </div>

    </div>


    <footer class="container">
        <!-- Header Footer -->
        <div class="header-footer">
            <div class="title-and-button-register">
                <span class="register-title">Đăng ký để nhận ưu đãi qua email</span>
                <a class="button-register" href="">Đăng ký</a>
            </div>
            <div class="social-network">
                <ul class="list-icon-social-network">
                    <li><a href=""><i class="fa-brands fa-facebook"></i></a></li>
                    <li><a href=""><i class="fa-brands fa-instagram"></i></a></li>
                    <li><a href=""><i class="fa-brands fa-pinterest"></i></a></li>
                    <li><a href=""><i class="fa-brands fa-x-twitter"></i></a></li>
                </ul>
            </div>
        </div>
        <!--End Header Footer -->
        <hr/>
        <!-- Body Footer -->
        <div class="body-footer">
            <!-- Column 1 -->
            <div class="footer-column">
                <div class="footer-title">
                    Thông tin
                </div>
                <ul class="list-title">
                    <li><a href="">Giới thiệu về Vua Hàng Hiệu Việt Nam</a></li>
                    <li><a href="">Quy chế hoạt động</a></li>
                    <li><a href="">Hợp tác với Vua Hàng Hiệu</a></li>
                    <li><a href="">Chương trình Affiliate - Cộng tác viên</a></li>
                    <li><a href="">Phụ trách nội dung</a></li>
                    <li><a href="">Tuyển dụng</a></li>
                    <li><a href="">Liên hệ</a></li>
                    <li><a href=""><img src="../images/img-bo-cong-thuong.svg" alt=""></a></li>
                    <li><a href=""><img src="../images/img-dmca.png" alt=""></a></li>
                    <li>
                        <div class="trust-sale-trust-lock">
                            <a href=""><img src="../images/business-trust-seal-trust-lock.png" alt=""></a>
                            <a href=""><img src="../images/privacy-trust-seal-trust-lock.png" alt=""></a>

                        </div>
                    </li>

                </ul>
            </div>
            <!--End Column 1 -->

            <!-- Column 2 -->
            <div class="footer-column">
                <div class="footer-title">
                    Câu hỏi thường gặp
                </div>
                <ul class="list-title">
                    <li><a href="">Hướng dẫn cách tra cứu mã đơn hàng mua trên Vua Hàng Hiệu</a></li>
                    <li><a href="">Sản phẩm cần đổi hết hàng ? </a></li>
                    <li><a href="">Nếu không có hóa đơn mua hàng tôi có thể trả lại sản phẩm không?</a></li>
                    <li><a href="">Tôi có thể trả lại sản phẩm vì không ưng ý?</a></li>
                    <li><a href="">Đơn hàng nhận được bị thiếu so với đơn hàng đã đặt</a></li>
                    <li><a href="">Sản phẩm nhận được không giống với hình ảnh trên website?</a></li>
                    <li><a href="">Vì sao tôi nhận được thông báo đơn hàng đã hủy do hết hàng?</a></li>
                    <li>
                        <h3>Tải ứng dụng cho điện thoại</h3>
                        <div class="image-store-app">
                            <a href=""><img src="../images/image-apple-store.svg" alt=""></a>
                            <a href=""><img src="../images/image-google-play.svg" alt=""></a>
                            <a href=""><img src="../images/image-huawei-gallery.svg" alt=""></a>
                        </div>

                    </li>


                </ul>
            </div>
            <!--End Column 2 -->

            <!-- Column 3 -->
            <div class="footer-column">
                <div class="footer-title">
                    Chăm sóc khách hàng
                </div>
                <ul class="list-title">
                    <li><a href="">Chính sách bán hàng</a></li>
                    <li><a href="">Chính sách bảo hành</a></li>
                    <li><a href="">Chính sách giao hàng</a></li>
                    <li><a href="">Chính sách đổi trả và hoàn tiền</a></li>
                    <li><a href="">Chính sách thanh toán</a></li>
                    <li><a href="">Chính sách bảo mật thanh toán</a></li>
                    <li><a href="">Chính sách quyền riêng tư</a></li>
                    <li><a href="">Điều kiện và điều khoản giao dịch</a></li>
                    <li><a href="">Cơ chế giải quyết tranh chấp</a></li>
                    <li><a href="">Dịch vụ giao hàng siêu tốc 2H</a></li>
                    <li><a href="">Hướng dẫn đăng ký thành viên</a></li>
                    <li><a href="">Quyền lợi thành viên</a></li>
                    <li><a href="">Hướng dẫn mua hàng trả góp</a></li>
                    <li><a href="">Báo cáo vi phạm (Reporting Infringements)</a></li>
                </ul>
            </div>
            <!--End Column 3 -->


            <!-- Column 4 -->
            <div class="footer-column">
                <div class="footer-title">
                    Dịch vụ khách hàng
                </div>
                <ul class="list-title">
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Tên doanh nghiệp</span>
                            <span class="name-address-and-contact">Công Ty Cổ Phần Thương Mại Vua Hàng Hiệu </span>
                        </div>
                    </li>
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Hotline</span>
                            <span class="name-address-and-contact">093.934.8888</span>
                        </div>
                    </li>
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Tổng đài</span>
                            <span class="name-address-and-contact">1900 232322</span>
                        </div>
                    </li>
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Tổng đài</span>
                            <span class="name-address-and-contact">cskh@vuahanghieu.com <br/> <br/>Thứ 2 - Thứ 6:
                                    8:00' - 17:00', Thứ 7 8:00' - 11:30' </span>
                        </div>
                    </li>
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Văn phòng đại diện</span>
                            <span class="name-address-and-contact">Tầng 3, Tòa nhà 24T3 Thanh Xuân Complex, Số 6 Lê
                                    Văn
                                    Thiêm, Thanh Xuân Trung, Thanh Xuân, Hà Nội </span>
                        </div>
                    </li>
                    <li>
                        <div class="address-and-contact">
                            <span class="title-address-and-contact">Mã số thuế</span>
                            <span class="name-address-and-contact">0108603370 do Sở Kế hoạch và Đầu tư Hà Nội cấp
                                    ngày
                                    28/01/2019</span>
                        </div>
                    </li>
                </ul>
            </div>
            <!--End Column 4 -->
        </div>
        <!--End Body Footer -->
        <hr/>
        <!-- Bottom Footer -->
        <div class="bottom-footer">
            <div class="copy-right">
                <span>© 2024 VUA HÀNG HIỆU.</span>
                <ul class="list-copy-right">
                    <li><a href="">Điều khoản</a></li>
                    <li><a href="">Chính sách bảo mật</a></li>
                </ul>
                <a href="" class="look-up-orders"><i class="fa-solid fa-truck"></i>Tra cứ đơn hàng</a>
            </div>
            <div class="payments">
                <img src="../images/payment-method.svg" alt="">
            </div>
        </div>
        <!--End Bottom Footer -->
    </footer>
</div> <!-- Div cuối -->

</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>

<script>
    function myOverFunction() {
        document.getElementById("drop-menu").classList.remove("hidden");
    }

    function myOutFunction() {
        document.getElementById("drop-menu").classList.add("hidden");
    }

    const toastTrigger = document.getElementById('liveToastBtn')
    const toastLiveExample = document.getElementById('liveToast')

    if (toastTrigger) {
        const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample);
        toastTrigger.addEventListener('click', () => {
            toastBootstrap.show();
            setTimeout(() => {
                toastBootstrap.hide();
            }, 1500); // 1000ms = 1s
        });
    }
</script>

</html>