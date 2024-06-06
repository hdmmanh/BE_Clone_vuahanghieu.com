package com.example.assignment_java5.controller;

import com.example.assignment_java5.model.Size;
import com.example.assignment_java5.service.SizeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class SizeController {
    @Autowired
    SizeService sizeService;

    @GetMapping("/size")
    public String hienThi(Model model) {
        return findPaginated(1, model);
    }

    @GetMapping("/pageSize/{pageNo}")
    public String findPaginated(@PathVariable(value = "pageNo") Integer pageNo, Model model) {
        int pageSize = 5;
        Page<Size> page = sizeService.findPaginated(pageNo, pageSize);
        List<Size> listSize = page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("listSize", listSize);

        return "/Size/Size";
    }

    @PostMapping("/size/add")
    public String createSize(@ModelAttribute("size") Size size) {
        Date ngayTao = new Date();
        Date ngaySua = new Date();
        size.setNgay_tao(ngayTao);
        size.setNgay_sua(ngaySua);
        sizeService.createSize(size);
        return "redirect:/size";
    }
    @PostMapping("/size/update")
    public String updateSize(@ModelAttribute("size") Size size, @RequestParam("id") Integer id) {
       Size getOne = sizeService.getOne(id);
       if (getOne.getId() == id){
           Date ngaySua = new Date();
           size.setNgay_sua(ngaySua);
           size.setNgay_tao(getOne.getNgay_tao());
           sizeService.updateSize(size);
       }
        return "redirect:/size";
    }

    @GetMapping("/size/delete")
    public String deleteSize(@RequestParam("id") Integer id) {
        sizeService.deleteSize(id);
        return "redirect:/size";
    }

    @GetMapping("/size/edit")
    public String editSize(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("detail", sizeService.getOne(id));
        return "Size/EditSize";
    }
}
