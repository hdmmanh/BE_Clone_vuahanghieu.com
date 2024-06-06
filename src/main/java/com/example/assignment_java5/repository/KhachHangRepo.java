package com.example.assignment_java5.repository;

import com.example.assignment_java5.model.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KhachHangRepo extends JpaRepository<KhachHang, Integer> {
}
