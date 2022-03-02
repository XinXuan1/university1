package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Course;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    Course selectByTeacher(@Param("tid") Integer tid);
    
    List<Course> selectList();
}