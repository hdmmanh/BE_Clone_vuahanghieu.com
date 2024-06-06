package com.example.assignment_java5.repository;

import com.example.assignment_java5.model.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, Integer> {
    @Query(value = "SELECT * FROM hdct " +
            "WHERE hdct.id_hoa_don = :idHD AND hdct.trang_thai = N'Đang mua sắm'" +
            "ORDER BY hdct.ngay_tao DESC", nativeQuery = true)
    Page<HoaDonChiTiet> getAllHDCT(@Param("idHD") int idHD, Pageable pageable);



    @Query(value = "select id from hdct where id_hoa_don = :idHD", nativeQuery = true)
    public List<Integer> listIdHDCT(@Param("idHD") int idHD);


    @Query(value = "select sum(tong_tien * so_luong_mua) from hdct \n" +
            "where id_hoa_don = ?1 AND hdct.trang_thai = N'Đang mua sắm'", nativeQuery = true)
    Double tongTienHoaDon(Integer idHoaDon);
}
