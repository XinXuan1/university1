package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Grade;
import cn.entity.Students;

public interface GradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Grade record);

    int insertSelective(Grade record);

    Grade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Grade record);

    int updateByPrimaryKey(Grade record);
    
    List<Grade> myGrade(@Param("sid") Integer sid);
    
    List<Grade> selectlist(@Param("tid") Integer tid);
    
    List<Grade> unGrade(@Param("sid") Integer sid);
    
   
}