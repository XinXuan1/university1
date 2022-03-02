package cn.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.entity.Grade;
import cn.entity.Teacher;

public interface TeacherService {
	int deleteByPrimaryKey(Integer id);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
    
    Teacher selectByUser(@Param("uid") Integer uid);
    
    List<Map<String, Integer>> selectCount();
    
    List<Teacher> selectList();
}
