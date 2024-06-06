package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.repository.ChiTietSanPhamRepository;
import com.example.assignment_java5.service.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChiTietSanPhamServiceImpl implements ChiTietSanPhamService {
    @Autowired
    ChiTietSanPhamRepository chiTietSanPhamRepository;

    @Override
    public List<ChiTietSanPham> getALL() {
        return chiTietSanPhamRepository.findAll();
    }

    @Override
    public ChiTietSanPham getOne(Integer id) {
        return chiTietSanPhamRepository.getOne(id);
    }

    @Override
    public Page<ChiTietSanPham> findPaginated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
        return this.chiTietSanPhamRepository.findAll(pageable);
    }
}
