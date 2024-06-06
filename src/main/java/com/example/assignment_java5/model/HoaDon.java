package com.example.assignment_java5.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@ToString
@Table(name = "hoa_don")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachHang;
    @Column(name="trang_thai")
    private String trangThai;
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngay_tao;
    @Temporal(TemporalType.TIMESTAMP)

    private Date ngay_sua;
    private String dia_chi;
    private String so_dien_thoai;
}
