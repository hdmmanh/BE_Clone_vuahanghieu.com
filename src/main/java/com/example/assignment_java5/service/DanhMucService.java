package com.example.assignment_java5.service;

import com.example.assignment_java5.model.DanhMuc;
import org.springframework.data.domain.Page;

import java.util.List;

public interface DanhMucService {
    List<DanhMuc> getAll();
    void createDanhMuc(DanhMuc danhMuc);
    DanhMuc getOne(Integer id);
    void deleteDanhMuc(Integer id);
    Page<DanhMuc> findPanigated(int pageNo, int pageSize);
    void updateDanhMuc(DanhMuc danhMuc);

}
