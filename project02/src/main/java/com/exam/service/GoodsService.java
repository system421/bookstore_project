/**
 * 
 */
package com.exam.service;

import java.util.List;

import com.exam.dto.GoodsDTO;

/**
 * 
 */
public interface GoodsService {

	public List<GoodsDTO> goodsList(String bCategory);
	public GoodsDTO bookedit(String bCode);
	public int bookadd(GoodsDTO dto);
	public int bookdelete(GoodsDTO dto);
	public int bookupdate(GoodsDTO dto);
	public String Codecheck(String bCode);
	public List<GoodsDTO> allgoodsList();
}
