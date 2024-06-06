package com.example.assignment_java5.service;

import com.example.assignment_java5.model.KhachHang;

public interface KhachHangService {
    KhachHang createKhachHang(KhachHang khachHang);
    KhachHang getOne(Integer id);
}
