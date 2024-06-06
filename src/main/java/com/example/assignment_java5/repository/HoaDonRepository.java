package com.example.assignment_java5.repository;

import com.example.assignment_java5.model.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HoaDonRepository extends JpaRepository<HoaDon, Integer> {

}
