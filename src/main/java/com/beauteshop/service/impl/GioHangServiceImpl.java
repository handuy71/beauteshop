package com.beauteshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beauteshop.entities.GioHang;
import com.beauteshop.entities.NguoiDung;
import com.beauteshop.repository.GioHangRepository;
import com.beauteshop.service.GioHangService;

@Service
public class GioHangServiceImpl implements GioHangService{
	
	@Autowired
	private GioHangRepository repo;
	
	@Override
	public GioHang getGioHangByNguoiDung(NguoiDung n)
	{
		return repo.findByNguoiDung(n);
	}
	
	@Override
	public GioHang save(GioHang g)
	{
		return repo.save(g);
	}

}
