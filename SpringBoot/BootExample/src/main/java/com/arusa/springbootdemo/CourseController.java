package com.arusa.springbootdemo;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController 
{
	@RequestMapping("course")
	public String courses(String cname, HttpSession session)
	{
		session.setAttribute("cname",cname);
		return "course";
	}
}
