package com.example.assignment_java5.service;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.model.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import java.util.List;

public interface HoaDonChiTietService {
    List<HoaDonChiTiet> getAll();
    void createHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet);
    Page<HoaDonChiTiet> findPanigated(int idHD,int idKH,int idGH, int pageNo, int pageSize);
    List<HoaDonChiTiet> getAllHDCT(int idHD);
    HoaDonChiTiet getOne(Integer id);
    void updateHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet);
    Double tongTien(Integer idHoaDon);
    Double tongTien_BanHang(Integer idHoaDon);
    List<Integer> listIdHDCT(Integer idHD);
}
