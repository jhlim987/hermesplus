package com.shop.hermesplus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("/admin")
	public String goAdminIndex() {
		return "admin/index";
	}
	@GetMapping("/admin/**")
	public void goAdmin() {}
	
}