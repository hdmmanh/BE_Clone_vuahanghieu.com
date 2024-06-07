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
//    @Query(value = "SELECT * FROM hdct " +
//            "WHERE hdct.id_hoa_don = :idHD AND hdct.trang_thai = N'Đang mua sắm'" +
//            "ORDER BY hdct.ngay_tao DESC", nativeQuery = true)
//    Page<HoaDonChiTiet> getAllHDCT(@Param("idHD") int idHD, Pageable pageable);

    @Query(value = "SELECT hdct.* \n" +
            "FROM hdct\n" +
            "JOIN hoa_don ON hdct.id_hoa_don = hoa_don.id\n" +
            "JOIN khach_hang On hoa_don.id_khach_hang = khach_hang.id\n" +
            "JOIN gio_hang ON khach_hang.id = gio_hang.id_khach_hang\n" +
            "WHERE hdct.id_hoa_don = :idHD AND hoa_don.trang_thai = N'Đang mua sắm'\n" +
            "and khach_hang.id = :idKH and gio_hang.id = :idGH;\n", nativeQuery = true)
    Page<HoaDonChiTiet> getAllHDCT(@Param("idHD") int idHD,@Param("idKH") int idKH,@Param("idGH") int idGH, Pageable pageable);

    @Query(value = "SELECT hdct.* \n" +
            "FROM hdct\n" +
            "JOIN hoa_don ON hdct.id_hoa_don = hoa_don.id\n" +
            "WHERE hdct.id_hoa_don = :idHD AND hoa_don.trang_thai = N'Chờ xác nhận'"
          ,nativeQuery = true)
    List<HoaDonChiTiet> getHDCT(@Param("idHD") int idHD);

    @Query(value = "select id from hdct where id_hoa_don = :idHD", nativeQuery = true)
    public List<Integer> listIdHDCT(@Param("idHD") int idHD);


    @Query(value = "select sum(tong_tien * so_luong_mua) from hdct \n" +
            "where id_hoa_don = ?1 AND hdct.trang_thai = N'Đang mua sắm' ", nativeQuery = true)
    Double tongTienHoaDon(Integer idHoaDon);

    @Query(value = "select sum(tong_tien * so_luong_mua) from hdct \n" +
            "where id_hoa_don = ?1 AND hdct.trang_thai = N'Chờ xác nhận' ", nativeQuery = true)
    Double tongTienHoaDon_BanHang(Integer idHoaDon);
}
