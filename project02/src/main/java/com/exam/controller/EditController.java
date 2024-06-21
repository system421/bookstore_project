package com.exam.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.exam.dto.FileDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.UploadDTO;
import com.exam.service.GoodsService;
//
@Controller
public class EditController {
	private Logger logger = LoggerFactory.getLogger(getClass());
	GoodsService goodsService;
	
	
	public EditController(GoodsService goodsService) {
		this.goodsService = goodsService;
	}


	@GetMapping("/bookedit")
	public String bookedit(@RequestParam(required = false) String bCode,
			ModelMap m) {
		GoodsDTO dto  = goodsService.bookedit(bCode);
		UploadDTO udto = new UploadDTO();
		
		logger.info("logger:bookedit:{}",dto);
		m.addAttribute("bookedit", dto);
		m.addAttribute("fileedit",udto);
		
		
		return "bookedit";
	}

	@PostMapping("/bookdelete")
	public String bookdelete( GoodsDTO dto, ModelMap m) {
		int n = goodsService.bookdelete(dto);
		logger.info("logger:bookdelete:{}",dto);
		logger.info("logger:bookdelete:{}",m);
		
		
		return "redirect:main";	
		
		
	}
	@GetMapping("/bookdeleteone")
	public String bookdeleteone( @RequestParam String bCode) {
		GoodsDTO dto = goodsService.bookedit(bCode);
		int n = goodsService.bookdelete(dto);
		logger.info("logger:bookdelete:{}",dto);
		
		
		return "redirect:AllList";	
		
		
	}
	@PostMapping("/bookupdate")
	public String bookupdate( FileDTO dto, ModelMap m) {
		GoodsDTO gdto = new GoodsDTO(dto.getbCode(), dto.getbCategory(), 
				dto.getbName(), dto.getbDate(), dto.getbPrice(), dto.getbInventory(), dto.getbImage());
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
		gdto.setbDate(LocalDate.now());
		int n = goodsService.bookupdate(gdto);
		logger.info("logger:bookupdate:{}",gdto);
		logger.info("logger:bookupdate:{}",m);
		
		
		return "redirect:main";
	}

	
}
