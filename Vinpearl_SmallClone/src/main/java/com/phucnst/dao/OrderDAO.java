package com.phucnst.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.phucnst.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {

	@Query("SELECT o FROM Order o WHERE o.id LIKE ?1")
	Optional<Order> findById(String id);

	// truy van theo loai
	@Query("SELECT o FROM Order o WHERE o.status LIKE ?1")
	List<Order> findByStatus(String id);
}
