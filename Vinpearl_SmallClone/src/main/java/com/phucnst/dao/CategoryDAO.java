package com.phucnst.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.phucnst.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {
}
