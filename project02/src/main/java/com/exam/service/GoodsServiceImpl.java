package com.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.dto.GoodsDTO;
import com.exam.mapper.GoodsMapper;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	GoodsMapper goodsMapper;
	

	public GoodsServiceImpl(GoodsMapper goodsMapper) {
		this.goodsMapper = goodsMapper;
	}

	@Override
	public List<GoodsDTO> goodsList(String bCategory) {
		// TODO Auto-generated method stub
		return goodsMapper.goodsList(bCategory);
	}

	@Override
	public GoodsDTO bookedit(String bCode) {
		
		return goodsMapper.bookedit(bCode);
	}

	@Override
	public int bookadd(GoodsDTO dto) {
		
		return goodsMapper.bookadd(dto);
	}

	@Override
	public int bookdelete(GoodsDTO dto) {
		
		return goodsMapper.bookdelete(dto);
	}

	@Override
	public int bookupdate(GoodsDTO dto) {
		
		return goodsMapper.bookupdate(dto);
	}

	@Override
	public String Codecheck(String bCode) {
		
		return goodsMapper.Codecheck(bCode);
	}



}
