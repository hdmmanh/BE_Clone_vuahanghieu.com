package com.example.assignment_java5.repository;

import com.example.assignment_java5.model.ChiTietSanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, Integer> {
    @Query(value = "\n" +
            "SELECT so_luong_ton from ctsp \n" +
            "where id = :idCTSP", nativeQuery = true)
    Integer getSoluong(@Param("idCTSP") Integer idCTSP);



    @Query(value = "SELECT ctsp FROM ChiTietSanPham ctsp " +
            "JOIN ctsp.sanPham sp " +
            "WHERE sp.ten_san_pham IS NULL OR sp.ten_san_pham = ''" +
            "OR sp.ten_san_pham LIKE %:tenKieuDang% "+
            "OR sp.ten_san_pham LIKE %:tenKieuDang%"
    )
    List<ChiTietSanPham> filterByKieuDang(@Param("tenKieuDang") String tenKieuDang);

}
