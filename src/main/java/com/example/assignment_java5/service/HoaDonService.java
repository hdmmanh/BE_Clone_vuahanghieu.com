package com.example.assignment_java5.service;

import com.example.assignment_java5.model.HoaDon;

import java.util.List;

public interface HoaDonService {
    List<HoaDon> getAll();

    HoaDon createHoaDon(HoaDon hoaDon);

    void updateHoaDon(HoaDon hoaDon);

    HoaDon getOne(Integer id);
}
