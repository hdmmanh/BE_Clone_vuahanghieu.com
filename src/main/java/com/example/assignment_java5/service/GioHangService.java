package com.example.assignment_java5.service;

import com.example.assignment_java5.model.GioHang;
import com.example.assignment_java5.model.HoaDonChiTiet;
import org.springframework.data.domain.Page;

import java.util.List;

public interface GioHangService {
    List<GioHang> getAll();
    GioHang create(GioHang gioHang);
    Page<GioHang> findPanigated(int pageNo, int pageSize);
}
