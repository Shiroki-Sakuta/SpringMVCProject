package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.UserBean;

@Controller
public class UserController {
	
	@GetMapping(value = "/register")
	public ModelAndView showRegister()
	{
		return new ModelAndView("Register","userObj",new UserBean());
	}
	
}
