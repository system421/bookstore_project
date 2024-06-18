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
public class EditController {
	Logger logger = LoggerFactory.getLogger(getClass());
	GoodsService goodsService;
	
	
	public EditController(GoodsService goodsService) {
		this.goodsService = goodsService;
	}


	@GetMapping("/bookedit")
	public String main(@RequestParam(required = false) String bCode,
			ModelMap m) {
		GoodsDTO dto  = goodsService.bookedit(bCode);
		logger.info("logger:mypage:{}",dto);
		m.addAttribute("bookedit", dto);
		
		
		return "bookedit";
	}
	
}
