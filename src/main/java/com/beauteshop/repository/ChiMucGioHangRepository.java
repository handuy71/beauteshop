package com.beauteshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.beauteshop.entities.ChiMucGioHang;
import com.beauteshop.entities.GioHang;
import com.beauteshop.entities.SanPham;

public interface ChiMucGioHangRepository extends JpaRepository<ChiMucGioHang, Long>{
	
	ChiMucGioHang findBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	List<ChiMucGioHang> findByGioHang(GioHang g);
}
