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
public class MainController {
	private Logger logger = LoggerFactory.getLogger(getClass());
	GoodsService goodsService;
	
	
	public MainController(GoodsService goodsService) {
		this.goodsService = goodsService;
	}


	@GetMapping("/main")
	public String main(@RequestParam(required = false, defaultValue = "novel") String bCategory,
			ModelMap m) {
		List<GoodsDTO> goodsList  = goodsService.goodsList(bCategory);
		m.addAttribute("goodsList", goodsList);
		
		
		return "main";
	}
	
}
