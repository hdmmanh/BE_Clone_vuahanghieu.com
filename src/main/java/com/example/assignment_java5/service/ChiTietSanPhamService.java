package com.example.assignment_java5.service;

import com.example.assignment_java5.DTO.ChiTietSanPhamDTO;
import com.example.assignment_java5.model.ChiTietSanPham;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ChiTietSanPhamService {
    List<ChiTietSanPham> getALL();
    Page<ChiTietSanPham> findPanigated(int pageNo, int pageSize);
    ChiTietSanPham getOne(Integer id);
    Page<ChiTietSanPham> findPaginated(int pageNo, int pageSize);
    void updateChiTietSanPham(ChiTietSanPham chiTietSanPham);
    Integer getSoLuong(int idCTSP);
    List<ChiTietSanPhamDTO> filterByKieuDang(String tenKieuDang);
}
