package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.SanPham;
import com.example.assignment_java5.repository.SanPhamRepository;
import com.example.assignment_java5.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SanPhamServiceImpl implements SanPhamService {
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Override
    public List<SanPham> getAll() {
        return sanPhamRepository.findAll();
    }

    @Override
    public void createSanPham(SanPham sanPham) {
        sanPhamRepository.save(sanPham);
    }

    @Override
    public void deleteSanPham(Integer id) {
        sanPhamRepository.deleteById(id);
    }

    @Override
    public SanPham edit(Integer id) {
        return sanPhamRepository.getById(id);
    }

    @Override
    public void updateSanPham(SanPham sanPham) {
        sanPhamRepository.save(sanPham);
    }

    @Override
    public Page<SanPham> findPaginated(int pageNo, int pageSize) {
        Pageable page = PageRequest.of(pageNo - 1, pageSize);
        return this.sanPhamRepository.findAll(page);
    }
}
