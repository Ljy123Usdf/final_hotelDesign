package com.hotel.business.userManagement.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.hotel.business.userManagement.modal.Student;

@Repository
public interface AA {

	@Select("select * from stu20173998")
	List<Student> sele();

}
