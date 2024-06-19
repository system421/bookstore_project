package com.exam.controller;

import java.time.LocalDate;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.exam.dto.FileDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.MemberDTO;
import com.exam.dto.UploadDTO;
import com.exam.service.GoodsService;
import com.exam.service.MemberService;



@Controller
@SessionAttributes(names = {"login"})
public class BookController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	GoodsService goodsService;
//sss
	
	public BookController(GoodsService goodsService) {
		
		this.goodsService = goodsService;
	}
	@GetMapping("/add_book")
	public String main(ModelMap m) {
		FileDTO fdto = new FileDTO();
		m.addAttribute("FileDTO", fdto);
		
		return "add_book";
	}
	@PostMapping("/add_book")
	public String main(@Valid @ModelAttribute("FileDTO") FileDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			logger.info("error:{}",result);
			return "add_book";
		}
		//DB연동
		
		dto.setbDate(LocalDate.now());
		logger.info("logger:signup:{}",dto);
		//goodsService.bookadd(dto);
		return "redirect:main";
	}
	
	@GetMapping("/Codecheck")
	public @ResponseBody String Codecheck(@RequestParam String bCode) {
		String chk = goodsService.Codecheck(bCode);
		
		String mesg = "사용가능";
		if(chk!=null) {
			mesg = "사용불가";
		}
		return mesg;
	}
	
	
	
}
