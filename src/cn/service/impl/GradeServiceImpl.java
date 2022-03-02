package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.GradeMapper;
import cn.entity.Grade;
import cn.service.GradeService;


@Service("gradeService")
public class GradeServiceImpl implements GradeService{

	
	@Autowired
	GradeMapper gradeMapper;

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Grade record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.insertSelective(record);
	}

	public List<Grade> myGrade(Integer sid) {
		// TODO Auto-generated method stub
		return gradeMapper.myGrade(sid);
	}

	public Grade selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gradeMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Grade record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.updateByPrimaryKeySelective(record);
	}

	public List<Grade> selectlist(Integer tid) {
		// TODO Auto-generated method stub
		return gradeMapper.selectlist(tid);
	}

	public List<Grade> unGrade(Integer sid) {
		// TODO Auto-generated method stub
		return gradeMapper.unGrade(sid);
	}
}
