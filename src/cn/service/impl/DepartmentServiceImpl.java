package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cn.dao.DepartmentMapper;
import cn.entity.Department;
import cn.service.DepartmentService;


@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{
	@Autowired
	DepartmentMapper departmentMapper;
	
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Department record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Department record) {
		// TODO Auto-generated method stub
		return departmentMapper.insertSelective(record);
	}

	public Department selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Department> selectList() {
		// TODO Auto-generated method stub
		return departmentMapper.selectList();
	}

	public int updateByPrimaryKey(Department record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Department record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
