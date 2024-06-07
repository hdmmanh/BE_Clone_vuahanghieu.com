package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.model.HoaDon;
import com.example.assignment_java5.model.HoaDonChiTiet;
import com.example.assignment_java5.model.KhachHang;
import com.example.assignment_java5.repository.KhachHangRepo;
import com.example.assignment_java5.service.ChiTietSanPhamService;
import com.example.assignment_java5.service.HoaDonChiTietService;
import com.example.assignment_java5.service.HoaDonService;
import com.example.assignment_java5.service.KhachHangService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;
import java.util.List;

@Controller

//@SessionAttributes("hoaDon")
public class BanHangController {
    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;
    @Autowired
    HoaDonChiTietService hoaDonChiTietService;
    @Autowired
    HoaDonService hoaDonService;
    @Autowired
    KhachHangService khachHangService;

//    @ModelAttribute("hoaDon")
//    public HoaDon createHoaDon(HoaDon hoaDon) {
//        hoaDon.setNgay_tao(new Date());
//        hoaDon.setNgay_sua(new Date());
//        hoaDon.setTrangThai("Đang mua sắm");
//        return hoaDonService.createHoaDon(hoaDon);
//    }

    public String trangThaiHD(HttpSession session) {
        return (String) session.getAttribute("trangThaiHD");
    }

    @GetMapping("/list-san-pham")
    public String listSP(Model model, HoaDon hoaDon, KhachHang khachHang, HttpSession session) {
        if (hoaDonService.getAll().size() == 0 || session.getAttribute("trangThaiSauDatHang").equals("Chờ xác nhận")) {
            hoaDon.setNgay_tao(new Date());
            hoaDon.setNgay_sua(new Date());
            hoaDon.setTrangThai("Đang mua sắm");
            hoaDon.setKhachHang(khachHangService.createKhachHang(khachHang));

            hoaDonService.createHoaDon(hoaDon);

            session.setAttribute("hoaDon", hoaDon);
            session.setAttribute("ngayTao", hoaDon.getNgay_tao());
            session.setAttribute("idHD", hoaDon.getId());
            session.setAttribute("idKH", hoaDon.getKhachHang().getId());
            session.setAttribute("trangThaiHD", hoaDon.getTrangThai());
            session.setAttribute("trangThaiSauDatHang", "Đang mua sắm");
        }

        model.addAttribute("listSP", chiTietSanPhamService.getALL());
        return "Client/ListSanPham";
    }

    @GetMapping("/test")
    public String test(HttpSession session) {
        System.out.println(session.getAttribute("ngayTao"));
        return "redirect:/gio-hang";
    }

    @GetMapping("/gio-hang")
    public String hienThiGioHang(Model model, @SessionAttribute("hoaDon") HoaDon hoaDon) {
        return findPaginated(1, model, hoaDon);
    }

    @GetMapping("/pageGH/{pageNo}")
    public String findPaginated(@PathVariable("pageNo") Integer pageNo, Model model, @SessionAttribute("hoaDon") HoaDon hoaDon) {
        int pageSize = 5;

        Page<HoaDonChiTiet> page = hoaDonChiTietService.findPanigated(hoaDon.getId(), pageNo, pageSize);
        List<HoaDonChiTiet> listHDCT = page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("getAllHDCT", listHDCT);
        model.addAttribute("tongTien", hoaDonChiTietService.tongTien(hoaDon.getId()));

        return "GioHang/GioHang";

    }

    @GetMapping("/gio-hang/tinh-tien-them-so-luong")
    public String tinhTienThem(@RequestParam("soLuong") Integer soLuong,
                               @RequestParam("idHDCT") Integer idHDCT,
                               RedirectAttributes redirectAttributes, @SessionAttribute("hoaDon") HoaDon hoaDon) {
        HoaDonChiTiet hoaDonChiTiet1 = hoaDonChiTietService.getOne(idHDCT);
        hoaDonChiTiet1.setSo_luong_mua(hoaDonChiTiet1.getSo_luong_mua() + soLuong);
        hoaDonChiTietService.updateHoaDonChiTiet(hoaDonChiTiet1);
        redirectAttributes.addFlashAttribute("tongTien", hoaDonChiTietService.tongTien(hoaDon.getId()));
        return "redirect:/gio-hang";
    }

    @GetMapping("/gio-hang/tinh-tien-giam-so-luong")
    public String tinhTienGiam(@RequestParam("soLuong") Integer soLuong,
                               @RequestParam("idHDCT") Integer idHDCT,
                               RedirectAttributes redirectAttributes, @SessionAttribute("hoaDon") HoaDon hoaDon) {
        HoaDonChiTiet hoaDonChiTiet1 = hoaDonChiTietService.getOne(idHDCT);
        hoaDonChiTiet1.setSo_luong_mua(hoaDonChiTiet1.getSo_luong_mua() - soLuong);
        hoaDonChiTietService.updateHoaDonChiTiet(hoaDonChiTiet1);
        redirectAttributes.addFlashAttribute("tongTien", hoaDonChiTietService.tongTien(hoaDon.getId()));
        return "redirect:/gio-hang";
    }

    @GetMapping("/gio-hang/{idCTSP}")
    public String gioHang(@PathVariable(value = "idCTSP") Integer id, Model model, HttpSession session) {

        ChiTietSanPham chiTietSanPham = chiTietSanPhamService.getOne(id);

        HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
        hoaDonChiTiet.setChiTietSanPham(chiTietSanPham);
        hoaDonChiTiet.setSo_luong_mua(1);
        hoaDonChiTiet.setHoaDon((HoaDon) session.getAttribute("hoaDon"));
        hoaDonChiTiet.setTong_tien(chiTietSanPham.getGia_ban() * 1);
        hoaDonChiTiet.setTrang_thai("Đang mua sắm");
        hoaDonChiTiet.setNgay_tao(new Date());
        hoaDonChiTiet.setNgay_sua(new Date());
        hoaDonChiTietService.createHoaDonChiTiet(hoaDonChiTiet);
        model.addAttribute("getAllHDCT", hoaDonChiTietService.getAll());

        return "redirect:/gio-hang";
    }

    @GetMapping("/check-dat-hang")
    public String checkDatHang(RedirectAttributes model) {
        if (hoaDonChiTietService.getAll().size() == 0) {
            model.addFlashAttribute("gioHangRong", "Giỏ hàng đang không có sản phẩm nào");
        } else {
            model.addFlashAttribute("openModal", "modal");
        }
        return "redirect:/gio-hang";
    }

    boolean validateDatHang(RedirectAttributes redirectAttributes, HoaDon hoaDon, @RequestParam("hoTen") String hoTen) {
        if (hoTen == null || hoTen.isBlank()) {
            redirectAttributes.addFlashAttribute("errorHoTen", "Vui lòng nhập tên bạn.");
            redirectAttributes.addFlashAttribute("openDatHangModal", "datHangModal");
            return false;
        } else {
            redirectAttributes.addFlashAttribute("hoTen", hoTen);
        }
        if (hoaDon.getSo_dien_thoai() == null || hoaDon.getSo_dien_thoai().isBlank()) {
            redirectAttributes.addFlashAttribute("errorSoDienThoai", "Vui lòng nhập số điện thoại.");
            redirectAttributes.addFlashAttribute("openDatHangModal", "datHangModal");
            return false;
        } else {
            redirectAttributes.addFlashAttribute("so_dien_thoai", hoaDon.getSo_dien_thoai());
        }
        if (hoaDon.getDia_chi() == null || hoaDon.getDia_chi().isBlank()) {
            redirectAttributes.addFlashAttribute("errorDiaChi", "Vui lòng nhập địa chỉ.");
            redirectAttributes.addFlashAttribute("openDatHangModal", "datHangModal");
            return false;
        } else {
            redirectAttributes.addFlashAttribute("dia_chi", hoaDon.getDia_chi());
        }
        return true;
    }

    @PostMapping("/dat-hang")
    public String datHang(HoaDon hoaDonUpdate, HttpSession session, RedirectAttributes redirectAttributes, @RequestParam("hoTen") String hoTen) {
        if (validateDatHang(redirectAttributes, hoaDonUpdate, hoTen)) {
            HoaDon hoaDon = hoaDonService.getOne((Integer) session.getAttribute("idHD"));

            hoaDon.setTrangThai("Chờ xác nhận");
            hoaDon.setNgay_tao((Date) session.getAttribute("ngayTao"));
            hoaDon.setNgay_sua(new Date());
            hoaDon.setSo_dien_thoai(hoaDonUpdate.getSo_dien_thoai());
            hoaDon.setDia_chi(hoaDonUpdate.getDia_chi());

            KhachHang khachHang = khachHangService.getOne((Integer) session.getAttribute("idKH"));
            khachHang.setHo_ten(hoTen);
            khachHang.setDia_chi(hoaDonUpdate.getDia_chi());
            khachHang.setSdt(hoaDonUpdate.getSo_dien_thoai());
            hoaDon.setKhachHang(khachHang);

            List<Integer> listIdHoaDon = hoaDonChiTietService.listIdHDCT((Integer) session.getAttribute("idHD"));
            for (int id : listIdHoaDon) {
                HoaDonChiTiet hoaDonChiTiet1 = hoaDonChiTietService.getOne(id);
                System.out.println(hoaDonChiTiet1);
                hoaDonChiTiet1.setTrang_thai("Chờ xác nhận");
                hoaDonChiTietService.updateHoaDonChiTiet(hoaDonChiTiet1);
            }

            hoaDonService.updateHoaDon(hoaDon);
            session.setAttribute("trangThaiSauDatHang", hoaDon.getTrangThai());
        }

        return "redirect:/gio-hang";
    }

    @GetMapping("/ban-hang")
    public String banHang(Model model) {
        model.addAttribute("listHoaDon", hoaDonService.getAll());
        return "BanHang/BanHang";
    }


}
