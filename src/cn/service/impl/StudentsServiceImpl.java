package cn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.StudentsMapper;
import cn.entity.Students;
import cn.service.StudentsService;


@Service("studentsService")
public class StudentsServiceImpl implements StudentsService{
	@Autowired
	StudentsMapper studentsMapper;

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Students record) {
		// TODO Auto-generated method stub
		return studentsMapper.insertSelective(record);
	}

	public Students selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Students selectByUser(Integer uid) {
		// TODO Auto-generated method stub
		return studentsMapper.selectByUser(uid);
	}

	public int updateByPrimaryKey(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Students record) {
		// TODO Auto-generated method stub
		return studentsMapper.updateByPrimaryKeySelective(record);
	}

	public List<Students> selectByD(Integer did) {
		// TODO Auto-generated method stub
		return studentsMapper.selectByD(did);
	}

	public List<Students> selectByGrade(Integer tid) {
		// TODO Auto-generated method stub
		return studentsMapper.selectByGrade(tid);
	}

	public List<Map<String, Integer>> selectCount() {
		// TODO Auto-generated method stub
		return studentsMapper.selectCount();
	}

}
