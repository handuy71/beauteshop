package com.beauteshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.beauteshop.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
