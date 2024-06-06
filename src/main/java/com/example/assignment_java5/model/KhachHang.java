package com.example.assignment_java5.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String ho_ten;
    private String dia_chi;
    private String sdt;
    private String trang_thai;
    private Date ngay_tao;
    private Date ngay_sua;
}
