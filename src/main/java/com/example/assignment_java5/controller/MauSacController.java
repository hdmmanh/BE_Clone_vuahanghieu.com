package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.MauSac;
import com.example.assignment_java5.service.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class MauSacController {
    @Autowired
    MauSacService mauSacService;

    @GetMapping("/mau-sac")
    public String hienThi(Model model) {
        return findPaginated(1, model);
    }

    @GetMapping("/pageMauSac/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") Integer pageNo, Model model) {
        int pageSize = 5;
        Page<MauSac> page = mauSacService.findPaginated(pageNo, pageSize);
        List<MauSac> listMauSac = page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("listMauSac", listMauSac);
        return "/MauSac/MauSac";
    }

    @GetMapping("/mau-sac/delete")
    public String deleteMauSac(@RequestParam("id") Integer id) {
        mauSacService.deleteMauSac(id);
        return "redirect:/mau-sac";
    }
@PostMapping("/mau-sac/add")
    public String createMauSac(@ModelAttribute("mauSac") MauSac mauSac){
    Date ngayTao = new Date();
    Date ngaySua = new Date();
    mauSac.setNgay_tao(ngayTao);
    mauSac.setNgay_sua(ngaySua);
    mauSacService.createMauSac(mauSac);
    return "redirect:/mau-sac";
}
    @PostMapping("/mau-sac/update")
    public String updateMauSac(@ModelAttribute("mauSac") MauSac mauSac, @RequestParam("id") Integer id){
     MauSac getOne = mauSacService.getOne(id);
     if(getOne.getId() == id ){
         Date ngaySua = new Date();
         mauSac.setNgay_sua(ngaySua);
         mauSac.setNgay_tao(getOne.getNgay_tao());
         mauSacService.updateMauSac(mauSac);
     }
        return "redirect:/mau-sac";
    }
    @GetMapping("/mau-sac/edit")
    public String editMauSac(@RequestParam("id") Integer id, Model model){
        model.addAttribute("detail", mauSacService.getOne(id));
        return "MauSac/EditMauSac";
    }
}
