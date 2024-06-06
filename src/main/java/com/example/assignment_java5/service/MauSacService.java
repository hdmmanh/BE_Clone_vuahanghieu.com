package com.example.assignment_java5.service;

import com.example.assignment_java5.model.MauSac;
import org.springframework.data.domain.Page;

import java.util.*;
public interface MauSacService {
    List<MauSac> getAll();
    void createMauSac(MauSac mauSac);
    void updateMauSac(MauSac mauSac);
    void deleteMauSac(Integer id);

    MauSac getOne(Integer id);

    Page<MauSac> findPaginated(int pageNo, int pageSize);
}
