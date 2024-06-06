package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.ChiTietSanPham;
import com.example.assignment_java5.model.HoaDonChiTiet;
import com.example.assignment_java5.repository.HoaDonChiTietRepository;
import com.example.assignment_java5.service.HoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HoaDonChiTietServiceImpl implements HoaDonChiTietService {
    @Autowired
    HoaDonChiTietRepository hoaDonChiTietRepository;
    @Override
    public List<HoaDonChiTiet> getAll() {
        return hoaDonChiTietRepository.findAll();
    }

    @Override
    public void createHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet) {
        hoaDonChiTietRepository.save(hoaDonChiTiet);
    }

    @Override
    public Page<HoaDonChiTiet> findPanigated(int idHD,int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo -1 , pageSize);
        return this.hoaDonChiTietRepository.getAllHDCT(idHD,pageable);
    }

    @Override
    public HoaDonChiTiet getOne(Integer id) {
        return hoaDonChiTietRepository.getReferenceById(id);
    }

    @Override
    public void updateHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet) {
        hoaDonChiTietRepository.save(hoaDonChiTiet);

    }

    @Override
    public Double tongTien(Integer idHoaDon) {
        return hoaDonChiTietRepository.tongTienHoaDon(idHoaDon);
    }

    @Override
    public List<Integer> listIdHDCT(Integer idHD) {
        return hoaDonChiTietRepository.listIdHDCT(idHD);
    }
}
