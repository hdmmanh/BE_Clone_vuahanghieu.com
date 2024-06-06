package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.DanhMuc;
import com.example.assignment_java5.repository.DanhMucRepository;
import com.example.assignment_java5.service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DanhMucServiceImpl implements DanhMucService {
    @Autowired
    DanhMucRepository danhMucRepository;

    @Override
    public List<DanhMuc> getAll() {
        return danhMucRepository.findAll();
    }

    @Override
    public void createDanhMuc(DanhMuc danhMuc) {
        danhMucRepository.save(danhMuc);
    }

    @Override
    public DanhMuc getOne(Integer id) {
        return danhMucRepository.getReferenceById(id);
    }

    @Override
    public void deleteDanhMuc(Integer id) {
        danhMucRepository.deleteById(id);
    }

    @Override
    public Page<DanhMuc> findPanigated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
        return this.danhMucRepository.findAll(pageable);
    }

    @Override
    public void updateDanhMuc(DanhMuc danhMuc) {
        danhMucRepository.save(danhMuc);
    }
}
