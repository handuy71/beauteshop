package com.beauteshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beauteshop.entities.ChiTietDonHang;
import com.beauteshop.repository.ChiMucGioHangRepository;
import com.beauteshop.repository.ChiTietDonHangRepository;
import com.beauteshop.service.ChiTietDonHangService;

@Service
public class ChiTietDonHangServiceImpl implements ChiTietDonHangService{
	
	@Autowired
	private ChiTietDonHangRepository repo;
	
	@Override
	public List<ChiTietDonHang> save(List<ChiTietDonHang> list)
	{	
		return repo.saveAll(list);
	}
}
