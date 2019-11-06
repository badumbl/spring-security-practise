package com.badumbl.springsecurity.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {
	
	@GetMapping("/leaders")
	public String showLeaders() {
		return "leaders";
	}

}
