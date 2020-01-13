package com.hotel.business.userManagement.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.business.userManagement.dao.AA;
import com.hotel.business.userManagement.modal.Student;
import com.hotel.business.userManagement.service.rooomInfoService;

@Service("rooomInfoService")
public class rooomInfoServiceImp implements rooomInfoService {
	@Autowired
	private AA aa;

	public List<Student> sel() {
		return aa.sele();
	}
}
