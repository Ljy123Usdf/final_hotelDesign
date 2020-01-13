package com.hotel.common.dao;

import com.hotel.common.modal.Stu20173998;
import com.hotel.common.modal.Stu20173998Example;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Stu20173998Mapper {
    long countByExample(Stu20173998Example example);

    int deleteByExample(Stu20173998Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Stu20173998 record);

    int insertSelective(Stu20173998 record);

    List<Stu20173998> selectByExample(Stu20173998Example example);

    Stu20173998 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Stu20173998 record, @Param("example") Stu20173998Example example);

    int updateByExample(@Param("record") Stu20173998 record, @Param("example") Stu20173998Example example);

    int updateByPrimaryKeySelective(Stu20173998 record);

    int updateByPrimaryKey(Stu20173998 record);
}