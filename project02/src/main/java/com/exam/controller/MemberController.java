package com.exam.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.exam.dto.MemberDTO;
import com.exam.service.MemberService;



@Controller
@SessionAttributes(names = {"login"})
public class MemberController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	MemberService memberService;

	public MemberController(MemberService memberService) {
		
		this.memberService = memberService;
	}

	@GetMapping("/idCheck")
	public @ResponseBody String idCheck(@RequestParam String userid) {
		MemberDTO dto = memberService.idCheck(userid);
		
		String mesg = "사용가능";
		if(dto!=null) {
			mesg = "사용불가";
		}
		logger.info("idcheck:{}",mesg);
		return mesg;
	}
	@GetMapping("/signup")
	public String main(ModelMap m) {
		MemberDTO dto = new MemberDTO();
		m.addAttribute("memberDTO", dto);
		
		return "memberForm";
	}
	@PostMapping("/signup")
	public String main(@Valid MemberDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			return "memberForm";
		}
		String encptPw = 
				new BCryptPasswordEncoder().encode(dto.getPasswd());
		dto.setPasswd(encptPw);
		
		//DB연동
		logger.info("logger:signup:{}",dto);
		memberService.memberAdd(dto);
		return "redirect:main";
	}
	@GetMapping(value={"/mypage"})
	public String mypage(ModelMap m) {
		//AuthProvider에 저장된 Authentication 얻자
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		logger.info("logger:Authentication:{}",auth);
		MemberDTO xxx = (MemberDTO)auth.getPrincipal();
		 m.addAttribute("login",xxx);
		logger.info("logger:member:{}",xxx);
	
		return "mypage";
	}
	@PostMapping(value={"/mypage"})
	public String mypage2( MemberDTO dto) {
		logger.info("mypage: test");
		String encptPw = 
				new BCryptPasswordEncoder().encode(dto.getPasswd());
		dto.setPasswd(encptPw);
		
		//DB연동
		logger.info("logger:signup:{}",dto);
		memberService.memberupdate(dto);
		return "redirect:main";
	}
	
}
