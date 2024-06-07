package com.example.assignment_java5.repository;

import com.example.assignment_java5.model.GioHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GioHangRepo extends JpaRepository<GioHang, Integer> {
}
