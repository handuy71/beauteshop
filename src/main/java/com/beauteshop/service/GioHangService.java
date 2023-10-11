package com.beauteshop.service;

import com.beauteshop.entities.GioHang;
import com.beauteshop.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
