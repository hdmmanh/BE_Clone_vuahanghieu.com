package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.MauSac;
import com.example.assignment_java5.repository.MauSacRepository;
import com.example.assignment_java5.service.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MauSacServiceImpl implements MauSacService {
    @Autowired
    MauSacRepository mauSacRepository;

    @Override
    public List<MauSac> getAll() {
        return mauSacRepository.findAll();
    }

    @Override
    public void createMauSac(MauSac mauSac) {
        mauSacRepository.save(mauSac);
    }

    @Override
    public void updateMauSac(MauSac mauSac) {
        mauSacRepository.save(mauSac);

    }

    @Override
    public void deleteMauSac(Integer id) {
        mauSacRepository.deleteById(id);
    }

    @Override
    public MauSac getOne(Integer id) {
        return mauSacRepository.getOne(id);
    }

    @Override
    public Page<MauSac> findPaginated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
        return this.mauSacRepository.findAll(pageable);
    }
}
