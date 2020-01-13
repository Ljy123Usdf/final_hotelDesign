package com.hotel.business.userManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.business.userManagement.modal.Student;
import com.hotel.business.userManagement.service.rooomInfoService;

@Controller
@RequestMapping()
public class userController {
	@Autowired
	private rooomInfoService roo;

	@RequestMapping("/ss")
	@ResponseBody
	public List<Student> ss() {
		List<Student> ls = roo.sel();
		System.out.println(ls);
		return ls;
	}

	// GetMapping,Post,Put,deletemapping
}
