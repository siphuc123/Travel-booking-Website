package com.phucnst.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.phucnst.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
}