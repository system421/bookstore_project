package com.exam.controller;

import java.time.LocalDate;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String bookedit(@RequestParam(required = false) String bCode,
			ModelMap m) {
		GoodsDTO dto  = goodsService.bookedit(bCode);
		logger.info("logger:bookedit:{}",dto);
		m.addAttribute("bookedit", dto);
		
		
		return "bookedit";
	}

	@PostMapping("/bookdelete")
	public String bookdelete( GoodsDTO dto, ModelMap m) {
		int n = goodsService.bookdelete(dto);
		logger.info("logger:bookdelete:{}",dto);
		logger.info("logger:bookdelete:{}",m);
		
		
		return "redirect:main";	
		
		
	}
	@PostMapping("/bookupdate")
	public String bookupdate( GoodsDTO dto, ModelMap m) {
		int n = goodsService.bookupdate(dto);
		dto.setbDate(LocalDate.now());
		logger.info("logger:bookupdate:{}",dto);
		logger.info("logger:bookupdate:{}",m);
		
		
		return "redirect:main";
	}

	
}
