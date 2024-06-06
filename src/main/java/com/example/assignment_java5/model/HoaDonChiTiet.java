package com.example.assignment_java5.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "hdct")
public class HoaDonChiTiet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "id_hoa_don")
    private HoaDon hoaDon;

    @ManyToOne
    @JoinColumn(name = "id_ctsp")
    private ChiTietSanPham chiTietSanPham;

    private Integer so_luong_mua;
    private Double tong_tien;
    private String trang_thai;
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngay_tao;
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngay_sua;
}
