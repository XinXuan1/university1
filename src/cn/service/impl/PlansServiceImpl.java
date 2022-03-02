package cn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.PlansMapper;
import cn.entity.Plans;
import cn.service.PlansService;


@Service("plansService")
public class PlansServiceImpl implements PlansService{
	@Autowired
	PlansMapper plansMapper;
	
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Plans record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Plans record) {
		// TODO Auto-generated method stub
		return plansMapper.insertSelective(record);
	}

	public Plans selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Plans> selectList(Integer csid, Integer dsid, Integer tsid) {
		// TODO Auto-generated method stub
		return plansMapper.selectList(csid, dsid, tsid);
	}

	public int updateByPrimaryKey(Plans record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Plans record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Map<String, Integer>> selectPlan(Integer dsid, Integer tsid) {
		// TODO Auto-generated method stub
		return plansMapper.selectPlan(dsid, tsid);
	}

	public List<Plans> selectList1(Integer tsid) {
		// TODO Auto-generated method stub
		return plansMapper.selectList1(tsid);
	}

}
