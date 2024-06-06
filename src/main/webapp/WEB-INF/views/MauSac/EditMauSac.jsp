<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png" type="image/x-icon">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

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
                <li class="icon-cart"><a href=""> Giỏ hàng <i class="fa-solid fa-bag-shopping"></i> </a></li>

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
                <img src="${pageContext.request.contextPath}/images/logo.svg"
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

    <div class="dashboard container-fluid ps-0 pe-0">
        <div class="site-bar">
            <ul>
                <li class="item-site-bar"><a href="">Dashboard</a></li>
                <li class="item-site-bar"><a href="/ban-hang">Bán hàng</a></li>
                <li class="item-site-bar"><a href="/san-pham">Sản phẩm</a></li>
                <li class="item-site-bar"><a href="/chi-tiet-san-pham">Chi tiết sản phẩm</a></li>
                <li class="item-site-bar"><a href="/danh-muc">Danh mục</a></li>
                <li class="item-site-bar"><a href="/size">Size</a></li>
                <li class="item-site-bar"><a href="/mau-sac">Màu sắc</a></li>

            </ul>
        </div>
        <div class="content-admin">
            <h3 style="color:aliceblue " class="ms-3 mt-3 mb-3">Chi tiết size</h3>
            <form class="container form-edit" action="/mau-sac/update?id=${detail.id}" method="post">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="ma_mau" value="${detail.ma_mau}" readonly>
                    <label>Mã size</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="ten_mau" value="${detail.ten_mau}">
                    <label>Tên size</label>
                </div>
                <label style="margin-left: 0;color: #f3f4f6">Trạng thái</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="trang_thai" id="flexRadioDefault1"
                           checked value="Hoạt động" ${detail.trang_thai.equals("Hoạt động") ? 'checked' : ''}>
                    <label class="form-check-label" for="flexRadioDefault1" style="color:white">
                        Hoạt động
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="trang_thai" id="flexRadioDefault2"
                           value="Không hoạt động" ${detail.trang_thai.equals("Không hoạt động") ? 'checked' : ''}>
                    <label class="form-check-label" for="flexRadioDefault2" style="color:white">
                        Không hoạt động
                    </label>
                </div>
                <button class="btn btn-primary mt-3" type="submit">Update</button>
            </form>
        </div>
    </div>


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
    confirmDelete = () => {
        return confirm("Bạn có chắc muốn xóa ?");
    }
</script>
</html>