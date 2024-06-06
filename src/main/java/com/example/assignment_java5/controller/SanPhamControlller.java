package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.DanhMuc;
import com.example.assignment_java5.model.SanPham;
import com.example.assignment_java5.service.DanhMucService;
import com.example.assignment_java5.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;
import java.util.List;

@Controller
public class SanPhamControlller {
    @Autowired
    SanPhamService sanPhamService;

    @Autowired
    DanhMucService danhMucService;

    @GetMapping("/san-pham")
    public String hienThi(Model model) {

        return findPaginated(1, model);
    }

    @GetMapping("/page/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") Integer pageNo, Model model) {
        int pageSize = 5;
        Page<SanPham> page = sanPhamService.findPaginated(pageNo, pageSize);
        List<SanPham> listSanPham = page.getContent();

        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("currentPage", pageNo);
        model.addAttribute("listSanPham", listSanPham);
        model.addAttribute("pageSize", pageSize);

        return "SanPham/sanpham";

    }

    @ModelAttribute("listDanhMuc")
    public List<DanhMuc> getListDanhMuc() {
        return danhMucService.getAll();
    }

    boolean validate( SanPham sanPham, RedirectAttributes redirectAttributes) {
        if (sanPham.getMa_san_pham() == null || sanPham.getMa_san_pham().isEmpty()) {
            redirectAttributes.addFlashAttribute("errorMaSanPham", "Vui lòng nhập mã sản phẩm !");
            redirectAttributes.addFlashAttribute("openModal", "exampleModal");
            return false;
        } else {
            redirectAttributes.addFlashAttribute("ma_san_pham", sanPham.getMa_san_pham());
        }
        if (sanPham.getTen_san_pham() == null || sanPham.getTen_san_pham().isEmpty()) {
            redirectAttributes.addFlashAttribute("errorTenSanPham", "Vui lòng nhập tên sản phẩm !");
            redirectAttributes.addFlashAttribute("openModal", "exampleModal");
           return false;
        } else {
            redirectAttributes.addFlashAttribute("ten_san_pham", sanPham.getTen_san_pham());
        }
        return true;
    }


    @PostMapping("/san-pham/add")
    public String createSanPham(SanPham sanPham, RedirectAttributes redirectAttributes) {
        if (validate(sanPham, redirectAttributes)) {
            Date ngayTao = new Date();
            Date ngaySua = new Date();

            sanPham.setNgay_tao(ngayTao);
            sanPham.setNgay_sua(ngaySua);
            sanPhamService.createSanPham(sanPham);

        }
        return "redirect:/san-pham";
    }

    @GetMapping("/san-pham/delete/{idSP}")
    public String deleteSanPham(@PathVariable(value = "idSP") Integer idSP) {
        sanPhamService.deleteSanPham(idSP);
        return "redirect:/san-pham";
    }

    @GetMapping("/san-pham/edit")
    public String edit(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("detail", sanPhamService.edit(id));
        return "SanPham/EditSanPham";
    }

    @PostMapping("/san-pham/update")
    public String updateSanPham(@RequestParam("id") Integer id, SanPham sanPham) {
        SanPham getOne = sanPhamService.edit(id);
        if (getOne.getId() == id) {
            Date ngaySua = new Date();
            sanPham.setNgay_sua(ngaySua);
            sanPham.setNgay_tao(getOne.getNgay_tao());
            sanPhamService.updateSanPham(sanPham);
            return "redirect:/san-pham";
        }
        return "redirect:/san-pham/add";
    }
}
