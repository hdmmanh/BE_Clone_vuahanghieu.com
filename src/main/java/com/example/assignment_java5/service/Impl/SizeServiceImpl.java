package com.example.assignment_java5.service.Impl;

import com.example.assignment_java5.model.Size;
import com.example.assignment_java5.repository.SizeRepository;
import com.example.assignment_java5.service.SizeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SizeServiceImpl implements SizeService {
    @Autowired
    SizeRepository sizeRepository;

    @Override
    public List<Size> getAll() {
        return sizeRepository.findAll();
    }

    @Override
    public void createSize(Size size) {
        sizeRepository.save(size);
    }

    @Override
    public void updateSize(Size size) {
        sizeRepository.save(size);

    }

    @Override
    public Size getOne(Integer id) {
        return sizeRepository.getOne(id);
    }

    @Override
    public void deleteSize(Integer id) {
        sizeRepository.deleteById(id);
    }

    @Override
    public Page<Size> findPaginated(int pageNo, int pageSize) {
        Pageable pageable = PageRequest.of(pageNo - 1, pageSize);
        return this.sizeRepository.findAll(pageable);
    }
}
