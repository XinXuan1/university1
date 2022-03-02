package cn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.TeacherMapper;
import cn.entity.Grade;
import cn.entity.Teacher;
import cn.service.TeacherService;


@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{
	@Autowired
	TeacherMapper teacherMapper;
	
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Teacher record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.insertSelective(record);
	}

	public Teacher selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Teacher selectByUser(Integer uid) {
		// TODO Auto-generated method stub
		return teacherMapper.selectByUser(uid);
	}

	public int updateByPrimaryKey(Teacher record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.updateByPrimaryKeySelective(record);
	}

	public List<Map<String, Integer>> selectCount() {
		// TODO Auto-generated method stub
		return teacherMapper.selectCount();
	}

	public List<Teacher> selectList() {
		// TODO Auto-generated method stub
		return teacherMapper.selectList();
	}


	

}
