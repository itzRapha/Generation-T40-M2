package com.BlogPessoal.blogpessoal.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
@RequestMapping("/BlogPessoal")
public class BlogPessoalController {
	@GetMapping
	public String blogpessoal() {
		return "Blog de Raphaella Guerra";
	}

}
