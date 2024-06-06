package com.example.assignment_java5.service;

import com.example.assignment_java5.model.SanPham;
import org.springframework.data.domain.Page;

import java.util.List;

public interface SanPhamService {
    List<SanPham> getAll();

    void createSanPham(SanPham sanPham);

    void deleteSanPham(Integer id);
    SanPham edit(Integer id);
    void updateSanPham(SanPham sanPham);

    Page<SanPham> findPaginated(int pageNo, int pageSize);
}
