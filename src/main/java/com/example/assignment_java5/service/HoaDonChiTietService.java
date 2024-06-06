package com.example.assignment_java5.service;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.model.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import java.util.List;

public interface HoaDonChiTietService {
    List<HoaDonChiTiet> getAll();
    void createHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet);
    Page<HoaDonChiTiet> findPanigated(int idHD, int pageNo, int pageSize);
    HoaDonChiTiet getOne(Integer id);
    void updateHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet);
    Double tongTien(Integer idHoaDon);
    List<Integer> listIdHDCT(Integer idHD);
}
