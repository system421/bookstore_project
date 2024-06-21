package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.GoodsDTO;

@Mapper
public interface GoodsMapper {
	
	public List<GoodsDTO> goodsList(String bCategory);
	public List<GoodsDTO> allgoodsList();
	public GoodsDTO bookedit(String bCode);
	public int bookadd(GoodsDTO dto);
	public int bookdelete(GoodsDTO dto);
	public int bookupdate(GoodsDTO dto);
	public String Codecheck(String bCode);

}
