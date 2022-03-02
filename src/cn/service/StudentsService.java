package cn.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.entity.Students;

public interface StudentsService {
	int deleteByPrimaryKey(Integer id);

    int insert(Students record);

    int insertSelective(Students record);

    Students selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Students record);

    int updateByPrimaryKey(Students record);
    
    Students selectByUser( Integer uid);
    
    List<Students> selectByD( Integer did);
    
    List<Students> selectByGrade(Integer tid);
    
    List<Map<String, Integer>> selectCount();
}
