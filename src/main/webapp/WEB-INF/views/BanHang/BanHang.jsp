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
        <div class="site-bar" style="height: 750px">
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
            <h3 style="color:aliceblue " class="ms-3 mt-3 mb-3">Hóa đơn</h3>
            <div class="table-content">
                <table class="table table-dark table-striped mb-0 table-san-pham">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">ID</th>
                        <th scope="col">Tên khách hàng</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col" style="width: 100px">Ngày sửa</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Hành động</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listHoaDon}" var="hd" varStatus="i">
                        <tr style="vertical-align: middle">
                            <th scope="row">
                                <c:out value="${ (currentPage - 1) * pageSize + i.index + 1}"/>
                            </th>
                            <td>${hd.id}</td>
                            <td>${hd.khachHang.ho_ten}</td>
                            <td>${hd.trangThai}</td>
                            <td>${hd.ngay_tao}</td>
                            <td>${hd.ngay_sua}</td>
                            <td>${hd.dia_chi}</td>
                            <td>${hd.so_dien_thoai}</td>
                            <td class="button-action">
                                <a href="/san-pham/edit?id=${hd.id}" class="btn btn-info">Chi tiết</a>
                                <a href="/san-pham/delete/${hd.id}" onclick="return confirmDelete()" class="btn btn-primary">Xóa</a>
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="paging">
                    <c:if test="${totalPages > 1}">
                        <div class="ms-0">Total Items: ${totalItems}</div>
                        <div>
                            <c:choose>
                                <c:when test="${currentPage > 1}">
                                    <a href="/page/${currentPage - 1}" class="button-prev">Previous</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="text-prev">Previous</span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div>
                            <c:forEach var="i" begin="1" end="${totalPages}">
                                <c:choose>
                                    <c:when test="${currentPage != i}">
                                        <a href="/page/${i}" class="button-page"
                                        >${i}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="text-page">${i}</span>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                        <div>
                            <c:choose>
                                <c:when test="${currentPage < totalPages}">
                                    <a href="/page/${currentPage + 1}" class="button-next">Next</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="text-next">Next</span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </c:if>
                </div>

            </div>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style=" margin-top: 15px;
    float: right;
    margin-right: 31.663px;">
                Thêm
            </button>
        </div>
    </div>


</div> <!-- Div cuối -->
<form action="/san-pham/add" method="post">
    <!-- Modal Add-->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" >
        <div class="modal-dialog" style="min-width: 900px">
            <div class="modal-content" style="width: 900px">
                <div class="modal-header" style="min-width: 900px">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Thêm sản phẩm</h1>
                </div>
                <div class="modal-body " style="min-width: 900px">
                    <div class="form-floating ">
                        <input type="text" class="form-control" name="ma_san_pham" value="${ma_san_pham}">
                        <label>Mã sản phẩm</label>
                    </div>
                    <p class="mb-3" style="color:red">${errorMaSanPham}</p>
                    <div class="form-floating ">
                        <input type="text" class="form-control" name="ten_san_pham" value="${ten_san_pham}">
                        <label>Tên sản phẩm</label>
                    </div>

                    <p class="mb-3" style="color:red">${errorTenSanPham}</p>

                    <select class="form-select" aria-label="Default select example" name="danhMuc.id">
                        <c:forEach items="${listDanhMuc}" var="dm">
                            <option selected hidden="hidden">Chọn danh mục</option>
                            <option value="${dm.id}">${dm.ten_danh_muc}</option>
                        </c:forEach>

                    </select>
                    <div class="product-status d-flex">
                        <label style="margin-left: 0">Trạng thái</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="trang_thai" id="flexRadioDefault1"
                                   checked value="Đang kinh doanh">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Đang kinh doanh
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="trang_thai" id="flexRadioDefault2"
                                   value="Ngừng kinh doanh">
                            <label class="form-check-label" for="flexRadioDefault2">
                                Ngừng kinh doanh
                            </label>
                        </div>

                    </div>


                </div>
                <div class="modal-footer" style="min-width: 900px">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Save changes</button>
                </div>

            </div>
        </div>
    </div>
</form>
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

    document.addEventListener('DOMContentLoaded', function() {
        var myModal = new bootstrap.Modal(document.getElementById('${openModal}'));
        myModal.show();
    });

</script>
</html>