package cn.service;

import java.util.List;

import cn.entity.College;

public interface CollegeService {
	int deleteByPrimaryKey(Integer id);

    int insert(College record);

    int insertSelective(College record);

    College selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(College record);

    int updateByPrimaryKey(College record);
    
    List<College> selectList();
}
