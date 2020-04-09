package com.project.productmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.productmanagement.entity.Admin;

import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class HomeController {
  @RequestMapping("/")
  public String displayWelcomePage()
  {
  	return "welcome" ;
  }
  @RequestMapping("/success")
  public String login(@ModelAttribute("admin") Admin adm) 
  {
	if((adm.getUsername().equals("mobile")) &&(adm.getPassword().equals("123456")))
      {
    	  return "redirect:/product/list";
      }
    else
      {
    	  return "login-failed";
      }  
  }
}