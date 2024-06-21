package com.exam.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

import com.exam.dto.FileDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.MemberDTO;
import com.exam.dto.UploadDTO;
import com.exam.service.GoodsService;
import com.exam.service.MemberService;



@Controller
@SessionAttributes(names = {"login"})
public class BookController {
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	GoodsService goodsService;
//
	
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
		GoodsDTO gdto = new GoodsDTO(dto.getbCode(),dto.getbCategory(),dto.getbName(),dto.getbDate(),dto.getbPrice(),dto.getbInventory(),dto.getbImage());;
		gdto.setbDate(LocalDate.now());
		logger.info("logger:signup:{}",dto);
		String theText = dto.getTheText();
		MultipartFile theFile = dto.getTheFile();
		long size = theFile.getSize();
		String name = theFile.getName();
		String fileName = theFile.getOriginalFilename();
		String contentType = theFile.getContentType();
		logger.info("logger:upload:{}", dto);
		logger.info("logger:theText:{}", theText);
		logger.info("logger:size:{}", size);
		logger.info("logger:name:{}", name);
		logger.info("logger:fileName:{}", fileName);
		logger.info("logger:contentType:{}", contentType);
		
		// 서버의 물리적인 디렉터리에 파일 저장 예:c:\\upload
		// 파일이 저장할 경로만 알려줌
		File f = new File("C:\\springboot_study\\sts-4.22.1.RELEASE\\workspace\\bookstore_project\\project02\\src\\main\\resources\\static\\images\\items", fileName);
		try {
			theFile.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		goodsService.bookadd(gdto);
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
