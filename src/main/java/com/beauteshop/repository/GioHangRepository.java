package com.beauteshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.beauteshop.entities.GioHang;
import com.beauteshop.entities.NguoiDung;

public interface GioHangRepository extends JpaRepository<GioHang, Long>{
	
	GioHang findByNguoiDung(NguoiDung n);
	
}
