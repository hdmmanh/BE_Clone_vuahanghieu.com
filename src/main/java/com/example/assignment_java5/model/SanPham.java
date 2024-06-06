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
@Table(name = "san_pham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String ma_san_pham;

    private String ten_san_pham;

    private String anh_san_pham;

    private String trang_thai;

    @Temporal(value = TemporalType.DATE)
    private Date ngay_tao;

    @Temporal(value = TemporalType.DATE)
    private Date ngay_sua;

    @ManyToOne
    @JoinColumn(name = "id_danh_muc")
    private DanhMuc danhMuc;
}
