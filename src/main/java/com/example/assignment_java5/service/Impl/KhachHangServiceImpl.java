package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.KhachHang;
import com.example.assignment_java5.repository.KhachHangRepo;
import com.example.assignment_java5.service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KhachHangServiceImpl implements KhachHangService {
    @Autowired
    KhachHangRepo khachHangRepo;
    @Override
    public KhachHang createKhachHang(KhachHang khachHang) {
        return khachHangRepo.save(khachHang);
    }

    @Override
    public KhachHang getOne(Integer id) {
        return khachHangRepo.getReferenceById(id);
    }
}
