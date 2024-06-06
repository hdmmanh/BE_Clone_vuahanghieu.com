package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.DanhMuc;
import com.example.assignment_java5.service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class DanhMucController {
    @Autowired
    DanhMucService danhMucService;

    @GetMapping("/danh-muc")
    public String hienThi(Model model) {
        return findPanigated(1, model);
    }

    @PostMapping("/danh-muc/add")
    public String createDanhMuc(@ModelAttribute("danhMuc") DanhMuc danhMuc) {
        Date ngayTao = new Date();
        Date ngaySua = new Date();
        danhMuc.setNgay_tao(ngayTao);
        danhMuc.setNgay_sua(ngaySua);
        danhMucService.createDanhMuc(danhMuc);
        return "redirect:/danh-muc";
    }

    @GetMapping("/danh-muc/delete")
    public String delete(@RequestParam("id") Integer id) {
        danhMucService.deleteDanhMuc(id);
        return "redirect:/danh-muc";
    }

    @GetMapping("/pageDanhMuc/{pageNo}")
    public String findPanigated(@PathVariable(value = "pageNo") Integer pageNo, Model model) {
        int pageSize = 5;
        Page<DanhMuc> page = danhMucService.findPanigated(pageNo, pageSize);
        List<DanhMuc> listDanhMuc = page.getContent();

        model.addAttribute("pageSize", pageSize);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("currentPage", pageNo);
        model.addAttribute("listDanhMuc", listDanhMuc);

        return "DanhMuc/DanhMuc";
    }

    @GetMapping("/danh-muc/edit")
    public String editDanhMuc(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("detail", danhMucService.getOne(id));
        return "DanhMuc/EditDanhMuc";
    }
    @PostMapping("/danh-muc/update")
    public String updateDanhMuc(@RequestParam("id") Integer id, @ModelAttribute("danhMuc") DanhMuc danhMuc){
        DanhMuc getOne = danhMucService.getOne(id);
        if (getOne.getId() == id){
            Date ngaySua = new Date();
            danhMuc.setNgay_sua(ngaySua);
            danhMuc.setNgay_tao(getOne.getNgay_tao());
            danhMucService.updateDanhMuc(danhMuc);
        }
        return "redirect:/danh-muc";
    }
}
