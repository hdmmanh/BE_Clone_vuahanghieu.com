package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.GioHang;
import com.example.assignment_java5.model.HoaDonChiTiet;
import com.example.assignment_java5.repository.GioHangRepo;
import com.example.assignment_java5.service.GioHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GioHangServiceImpl implements GioHangService {
    @Autowired
    GioHangRepo gioHangRepo;
    @Override
    public List<GioHang> getAll() {
        return gioHangRepo.findAll();
    }

    @Override
    public GioHang create(GioHang gioHang) {
        return gioHangRepo.save(gioHang);
    }

    @Override
    public Page<GioHang> findPanigated( int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo -1 , pageSize);
        return this.gioHangRepo.findAll(pageable);
    }
}
