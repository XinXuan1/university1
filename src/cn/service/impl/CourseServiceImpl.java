package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.CourseMapper;
import cn.entity.Course;
import cn.service.CourseService;


@Service("courseService")
public class CourseServiceImpl implements CourseService{
	@Autowired
	CourseMapper courseMapper;
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return courseMapper.deleteByPrimaryKey(id);
	}

	public int insert(Course record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Course record) {
		// TODO Auto-generated method stub
		return courseMapper.insertSelective(record);
	}

	public Course selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Course selectByTeacher(Integer tid) {
		// TODO Auto-generated method stub
		return courseMapper.selectByTeacher(tid);
	}

	public int updateByPrimaryKey(Course record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Course record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Course> selectList() {
		// TODO Auto-generated method stub
		return courseMapper.selectList();
	}

}
