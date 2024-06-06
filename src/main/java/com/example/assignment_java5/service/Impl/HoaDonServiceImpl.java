package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.HoaDon;
import com.example.assignment_java5.repository.HoaDonRepository;
import com.example.assignment_java5.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonServiceImpl implements HoaDonService {
    @Autowired
    HoaDonRepository hoaDonRepository;

    @Override
    public List<HoaDon> getAll() {
        return hoaDonRepository.findAll();
    }

    @Override
    public HoaDon createHoaDon(HoaDon hoaDon) {
       return hoaDonRepository.save(hoaDon);
    }

    @Override
    public void updateHoaDon(HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);
    }

    @Override
    public HoaDon getOne(Integer id) {
        return hoaDonRepository.getReferenceById(id);
    }
}
