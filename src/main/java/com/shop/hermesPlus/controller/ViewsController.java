package com.shop.hermesPlus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ViewsController {
	@GetMapping("/")
	public String home() {
		return "views/index";
	}
	@GetMapping("/views/**")
	public void goPage() {}
}
