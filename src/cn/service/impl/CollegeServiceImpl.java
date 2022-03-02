package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.CollegeMapper;
import cn.entity.College;
import cn.service.CollegeService;


@Service("collegeService")
public class CollegeServiceImpl implements CollegeService{
	@Autowired
	
	CollegeMapper collegeMapper;
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return collegeMapper.deleteByPrimaryKey(id);
	}

	public int insert(College record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.insertSelective(record);
	}

	public College selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return collegeMapper.selectByPrimaryKey(id);
	}

	public List<College> selectList() {
		// TODO Auto-generated method stub
		return collegeMapper.selectList();
	}

	public int updateByPrimaryKey(College record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.updateByPrimaryKeySelective(record);
	}

}
