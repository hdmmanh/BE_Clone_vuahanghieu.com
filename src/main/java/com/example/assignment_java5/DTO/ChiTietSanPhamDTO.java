package com.example.assignment_java5.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ChiTietSanPhamDTO {
    private Integer id;
    private String tenSanPham;
    private String tenMauSac;
    private String tenSize;
    private Double giaBan;
    private Integer soLuongTon;
    private String trangThai;
    private Date ngayTao;
    private Date ngaySua;
}
