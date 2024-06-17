package com.exam.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.annotation.SessionScope;

import com.exam.dto.GoodsDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.GoodsService;
import com.exam.service.MemberService;

@Controller
@SessionAttributes(names = {"login"})
public class LoginController {
	Logger logger = LoggerFactory.getLogger(getClass());
	MemberService memberService;
	

	public LoginController(MemberService memberService) {
		
		this.memberService = memberService;
	}
	@GetMapping("/login")
	public String login() {
	
		return "loginForm";
	}
	@PostMapping("/login")	
	public String login(@RequestParam Map<String, String> m, ModelMap model) {
		
		MemberDTO dto = memberService.login(m);
		if(dto != null) {
			
			//세션에 저장
			model.addAttribute("login",dto);
			return "redirect:main";
			
		}
		model.addAttribute("errorMessage","id나 비밀번호 확인 필요");
		return "loginForm";
		
	}
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:main";
	}
	
}
