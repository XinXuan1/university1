package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.TeamsMapper;
import cn.entity.Teams;
import cn.service.TeamsService;

@Service("teamsService")
public class TeamsServiceImpl implements TeamsService{
	@Autowired
	TeamsMapper teamsMapper;
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Teams record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Teams record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Teams selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return teamsMapper.selectByPrimaryKey(id);
	}

	public List<Teams> selectList() {
		// TODO Auto-generated method stub
		return teamsMapper.selectList();
	}

	public int updateByPrimaryKey(Teams record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Teams record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
