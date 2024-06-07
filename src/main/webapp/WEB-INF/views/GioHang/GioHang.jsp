<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body data-open-modal="${openModal}">
<div class="wrapper">
    <div class="main-header-wrapper">
        <div id="top-nav" class="container d-flex">
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
                <a href="/list-san-pham">
                    <img src="../images/logo.svg"
                         alt="Vua Hàng Hiệu™ - Mua hàng hiệu chính hãng trực tuyến, Giá Tốt Nhất">
                </a>

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

    <div class="cart-and-pay container-fluid mt-3">
        <div class="cart">
            <div class="cart-header">
                <svg _ngcontent-ng-c3101232259="" xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                     fill="currentColor" viewBox="0 0 16 16" class="bi bi-basket">
                    <path _ngcontent-ng-c3101232259=""
                          d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z">
                    </path>
                </svg>
                <h1>Giỏ hàng của bạn</h1>
            </div>
            <div class="cart-body mt-3">
                <table class="table table-cart">
                    <thead class="table-secondary">
                    <tr>
                        <th scope="col" style="text-align: center">Ảnh</th>
                        <th scope="col" style="text-align: center">Tên sản phẩm</th>
                        <th scope="col" style="text-align: center">Giá</th>
                        <th scope="col" style="text-align: center">Số lượng</th>
                        <th scope="col" style="text-align: center">Thành tiền</th>
                        <th scope="col" style="text-align: center">Xóa sản phẩm</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${getAllHDCT}" var="sp_gh">
                        <tr>
                            <th scope="row">
                                <img style="max-width: 100px"
                                     src="../images/${sp_gh.chiTietSanPham.sanPham.anh_san_pham}">
                            </th>
                            <td style="vertical-align: middle">${sp_gh.chiTietSanPham.sanPham.ten_san_pham}</td>
                            <td style="vertical-align: middle">
                                <fmt:formatNumber value="${sp_gh.chiTietSanPham.gia_ban}" pattern="#,##0 đ"/>
                            </td>
                            <td style="vertical-align: middle">
                                <i class="fa-solid fa-minus"
                                   style="padding: 5px;background-color: #BDB8B8;border-radius: 5px;"
                                   data-bs-toggle="modal" data-bs-target="#giamSoLuongModal-${sp_gh.id}"></i>
                                    ${sp_gh.so_luong_mua > 1 ? sp_gh.so_luong_mua : 1}
                                <i class="fa-solid fa-plus"
                                   style="padding: 5px;background-color: #BDB8B8;border-radius: 5px;"
                                   data-bs-toggle="modal" data-bs-target="#themSoLuongModal-${sp_gh.id}"></i>
                            </td>
                            <td style="vertical-align: middle">
                                <fmt:formatNumber value="${sp_gh.chiTietSanPham.gia_ban * sp_gh.so_luong_mua}"
                                                  pattern="#,##0 đ"/>
                            </td>
                            <td style="vertical-align: middle">
                                <a  href="/gio-hang/delete-san-pham?id=${sp_gh.id}" onclick="return confirm('Bạn có muốn xóa sản phẩm này không ?')">
                                    <i class="fa-solid fa-trash" style="color: black"></i></a>
                            </td>
                        </tr>
                        <form action="/gio-hang/tinh-tien-them-so-luong" method="get">
                            <input name="idCTSP" value="${sp_gh.chiTietSanPham.id}" hidden="hidden">
                            <!-- Modal Thêm số lượng-->
                            <div class="modal fade" id="themSoLuongModal-${sp_gh.id}" tabindex="-1"
                                 aria-labelledby="themSoLuongModalLabel-${sp_gh.id}" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header" style="margin:0">
                                            <h5 class="modal-title" id="themSoLuongModalLabel-${sp_gh.id}">Thêm số lượng
                                                sản phẩm</h5>
                                        </div>
                                        <div class="modal-body" style="margin:0">
                                            <div class="form-floating mb-3">
                                                <input hidden name="idHDCT" value="${sp_gh.id}">
                                                <input type="number" class="form-control" id="floatingInput-${sp_gh.id}"
                                                       placeholder="name@example.com" name="soLuong">
                                                <label for="floatingInput-${sp_gh.id}">Nhập số lượng sản phẩm muốn
                                                    thêm...</label>
                                            </div>
                                            <p style="color: red">${errorSoLuongThem}</p>
                                        </div>
                                        <div class="modal-footer" style="margin:0">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="submit" class="btn btn-primary">Thêm</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <form action="/gio-hang/tinh-tien-giam-so-luong" method="get">
                            <!-- Modal Giảm số lượng-->
                            <div class="modal fade" id="giamSoLuongModal-${sp_gh.id}" tabindex="-1"
                                 aria-labelledby="giamSoLuongModal-${sp_gh.id}" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header" style="margin:0">
                                            <h5 class="modal-title" id="themSoLuongModalLabel-${sp_gh.id}">Giảm số lượng
                                                sản phẩm</h5>
                                        </div>
                                        <div class="modal-body" style="margin:0">
                                            <div class="form-floating mb-3">
                                                <input hidden name="idHDCT" value="${sp_gh.id}">
                                                <input type="number" class="form-control" id="floatingInput-${sp_gh.id}"
                                                       placeholder="name@example.com" name="soLuong">
                                                <label for="floatingInput-${sp_gh.id}">Nhập số lượng sản phẩm muốn
                                                    giảm...</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer" style="margin:0">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <button type="submit" class="btn btn-primary">Giảm</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </c:forEach>

                    </tbody>
                </table>
                <p style="text-align: center;
                        color: red;
                        font-size: 18px;
                        font-weight: 600;">${gioHangRong}</p>
                <div class="paging-cart" style="color: black">
                    <c:if test="${totalPages > 1}">
                        <div class="ms-0">Total Items: ${totalItems}</div>
                        <div>
                            <c:choose>
                                <c:when test="${currentPage > 1}">
                                    <a href="/pageGH/${currentPage - 1}" class="button-prev">Previous</a>
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
                                                <a href="/pageGH/${i}" class="button-page">${i}</a>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="text-page">${i}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>

                                    <c:otherwise>
                                        <c:if test="${i == 4}">
                                            <span>...</span>
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>

                        <div>
                            <c:choose>
                                <c:when test="${currentPage < totalPages}">
                                    <a href="/pageGH/${currentPage + 1}" class="button-next">Next</a>
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

        <div class="pay">
            <h1>Đặt hàng</h1>
            <ul>
                <li>
                    <span>Tạm tính:</span>
                    <span>
                        <fmt:formatNumber value="${tongTien > 0 ? tongTien : 0}" pattern="#,##0 "/><sup>đ</sup>
                    </span>
                </li>
                <li>
                    <span>Vận chuyển:</span>
                    <span>Vui lòng nhập địa chỉ</span>
                </li>
                <li>
                    <span>Điểm tích lũy:</span>
                    <span>0</span>
                </li>
                <li>
                    <span>Tiền phải trả:</span>
                    <span>
                          <fmt:formatNumber value="${tongTien > 0 ? tongTien : 0}" pattern="#,##0"/>
                        <sup>đ</sup></span>
                </li>
            </ul>
            <div class="button-bill-and-button-orders">
                <div class="button-bill">
                    <a id="tinhTienButton" href="#">Tính tiền</a>
                </div>
                <div class="button-orders">
                    <a href="/check-dat-hang"
                       style="cursor: pointer">Đặt hàng</a>
                </div>
            </div>

        </div>
    </div>

    <%--=======================--%>
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
<form action="/dat-hang" method="post">
    <!-- Modal Đặt hàng-->
    <div class="modal fade" id="datHangModal" tabindex="-1" aria-labelledby="datHangModal" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 860px">
            <div class="modal-content">
                <div class="modal-header" style="margin:0">
                    <h5 class="modal-title" id="exampleModalLabel">Nhập thông tin nhận hàng</h5>

                </div>
                <div class="modal-body" style="margin:0">
                    <div class="form-floating">
                        <input type="text" class="form-control" name="hoTen" value="${hoTen}">
                        <label>Họ tên</label>
                    </div>
                    <p style="color:red;" class="mb-3">${errorHoTen}</p>
                    <div class="form-floating ">
                        <input type="number" class="form-control" name="so_dien_thoai" value="${so_dien_thoai}">
                        <label>Số điện thoại</label>
                    </div>
                    <p style="color:red;" class="mb-3">${errorSoDienThoai}</p>
                    <div class="form-floating ">
                        <input type="text" class="form-control" name="dia_chi" value="${dia_chi}">
                        <label>Địa chỉ</label>
                    </div>
                    <p style="color:red;" class="mb-3">${errorDiaChi}</p>
                </div>
                <div class="modal-footer" style="margin:0">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">ĐẶT HÀNG
                    </button>
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

    document.addEventListener('DOMContentLoaded', function () {
        var modalDatHang = new bootstrap.Modal(document.getElementById('${openDatHangModal}'));
        modalDatHang.show();
    });
    document.addEventListener('DOMContentLoaded', function () {
        var modalThemSoLuong = new bootstrap.Modal(document.getElementById('${openthemSoLuongModal}-${idOpenModal}'));
        modalThemSoLuong.show();
    });

    document.addEventListener("DOMContentLoaded", function () {
        // Kiểm tra nếu có thuộc tính openModal trong các flash attributes
        const openModal = document.body.dataset.openModal;
        if (openModal === "modal") {
            // Sử dụng Bootstrap để hiển thị modal
            const myModal = new bootstrap.Modal(document.getElementById('datHangModal'), {
                keyboard: false
            });
            myModal.show();
        }
    });
</script>

</html>