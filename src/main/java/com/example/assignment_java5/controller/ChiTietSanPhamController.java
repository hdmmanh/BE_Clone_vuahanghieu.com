package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.service.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ChiTietSanPhamController {
    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;

    @GetMapping("/chi-tiet-san-pham")
    public String hienThi(Model model) {
        return findPaginated(1, model);
    }

    @GetMapping("/page1/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") Integer pageNo, Model model) {
        int pageSize = 5;
        Page<ChiTietSanPham> page = chiTietSanPhamService.findPaginated(pageNo, pageSize);
        List<ChiTietSanPham> listCTSP = page.getContent();
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("currentPage", pageNo);
        model.addAttribute("listCTSP", listCTSP);
        model.addAttribute("pageSize", pageSize);

        return "SanPham/chitietsanpham";
    }
}
