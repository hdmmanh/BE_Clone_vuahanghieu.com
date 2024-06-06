package com.example.assignment_java5.model;

import jakarta.persistence.*;
import lombok.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "danh_muc")
public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String  ma_danh_muc;
    private String  ten_danh_muc;
    private String  trang_thai;
    private Date ngay_tao;
    private Date  ngay_sua;
}
