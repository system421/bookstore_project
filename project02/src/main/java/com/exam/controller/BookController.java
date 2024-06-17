package com.exam.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.exam.dto.GoodsDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.GoodsService;
import com.exam.service.MemberService;



@Controller
@SessionAttributes(names = {"login"})
public class BookController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	GoodsService goodsService;

	
	public BookController(GoodsService goodsService) {
		super();
		this.goodsService = goodsService;
	}
	@GetMapping("/add_book")
	public String main(ModelMap m) {
		GoodsDTO dto = new GoodsDTO();
		m.addAttribute("GoodsDTO", dto);
		
		return "add_book";
	}
	@PostMapping("/add_book")
	public String main(@Valid GoodsDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			return "add_book";
		}
		//DB연동
		logger.info("logger:signup:{}",dto);
		goodsService.bookadd(dto);
		return "redirect:main";
	}
	
	
	
}