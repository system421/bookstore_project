package com.exam.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.GoodsDTO;
import com.exam.service.GoodsService;

@Controller
public class AllListController {
	Logger logger = LoggerFactory.getLogger(getClass());
	GoodsService goodsService;
	
	
	public AllListController(GoodsService goodsService) {
		this.goodsService = goodsService;
	}


	@GetMapping("/AllList")
	public String alllist(ModelMap m) {
		List<GoodsDTO> goodsList  = goodsService.allgoodsList();
		m.addAttribute("AllList", goodsList);
		
		
		return "alllist";
	}
	
}
