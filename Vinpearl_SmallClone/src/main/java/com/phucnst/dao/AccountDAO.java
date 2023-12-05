package com.phucnst.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.phucnst.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

	@Override
	@Query("SELECT o FROM Account o WHERE o.username LIKE ?1")
	Optional<Account> findById(String username);
}
