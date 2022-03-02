package cn.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.entity.Students;

public interface StudentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Students record);

    int insertSelective(Students record);

    Students selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);
    
    Students selectByUser(@Param("uid") Integer uid);
    
    List<Students> selectByD(@Param("did") Integer did);
    
    List<Students> selectByGrade(@Param("tid") Integer tid);
    
    List<Map<String, Integer>> selectCount();
}