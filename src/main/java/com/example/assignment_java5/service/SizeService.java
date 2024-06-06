package com.example.assignment_java5.service;

import com.example.assignment_java5.model.Size;
import org.springframework.data.domain.Page;

import java.util.List;

public interface SizeService {
    List<Size> getAll();
    void createSize(Size size);
    void updateSize(Size size);
    Size getOne(Integer id);

    void deleteSize(Integer id);
    Page<Size> findPaginated(int pageNo,int pageSize);
}
