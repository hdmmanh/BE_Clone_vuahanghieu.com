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
    public Page<HoaDonChiTiet> findPanigated(int idHD, int idKH, int idGH, int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
        return this.hoaDonChiTietRepository.getAllHDCT(idHD, idKH, idGH, pageable);
    }

    @Override
    public List<HoaDonChiTiet> getAllHDCT(int idHD) {
        return hoaDonChiTietRepository.getHDCT(idHD);
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
    public void deleteHoaDonChiTiet(Integer id) {
        hoaDonChiTietRepository.deleteById(id);
    }

    @Override
    public Double tongTien(Integer idHoaDon) {
        return hoaDonChiTietRepository.tongTienHoaDon(idHoaDon);
    }

    @Override
    public Double tongTien_BanHang(Integer idHoaDon) {
        return hoaDonChiTietRepository.tongTienHoaDon_BanHang(idHoaDon);
    }

    @Override
    public List<Integer> listIdHDCT(Integer idHD) {
        return hoaDonChiTietRepository.listIdHDCT(idHD);
    }

    @Override
    public List<Integer> getAllId_CTSP_In_HoaDon(Integer idHD) {
        return hoaDonChiTietRepository.getAllId_CTSP_In_HoaDon(idHD);
    }

    @Override
    public List<Integer> getAllSoLuong_CTSP_In_HoaDon(Integer idHD) {
        return hoaDonChiTietRepository.getAllSoLuong_CTSP_In_HoaDon(idHD);
    }
}
