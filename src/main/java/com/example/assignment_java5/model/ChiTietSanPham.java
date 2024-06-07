    package com.example.assignment_java5.model;

    import lombok.*;
    import jakarta.persistence.*;

    import java.util.Date;

    @AllArgsConstructor
    @NoArgsConstructor
    @Getter
    @Setter
    @Entity
    @Table(name = "ctsp")
    public class ChiTietSanPham {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Integer id;

        @ManyToOne
        @JoinColumn(name = "id_sp")
        private SanPham sanPham;

        @ManyToOne
        @JoinColumn(name = "id_mau_sac")
        private MauSac mauSac;

        @ManyToOne
        @JoinColumn(name = "id_size")
        private Size size;

        private Double gia_ban;

        private Integer so_luong_ton;

        private String trang_thai;

        private Date ngay_tao;
        private Date ngay_sua;

        @Override
        public String toString() {
            return "ChiTietSanPham{" +
                    "id=" + id +
                    ", sanPham=" + sanPham +
                    ", mauSac=" + mauSac +
                    ", size=" + size +
                    ", gia_ban=" + gia_ban +
                    ", so_luong_ton=" + so_luong_ton +
                    ", trang_thai='" + trang_thai + '\'' +
                    ", ngay_tao=" + ngay_tao +
                    ", ngay_sua=" + ngay_sua +
                    '}';
        }
    }
