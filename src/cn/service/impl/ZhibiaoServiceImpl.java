package cn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.ZhibiaoMapper;
import cn.entity.Zhibiao;
import cn.service.ZhibiaoService;


@Service("zhibiaoService")
public class ZhibiaoServiceImpl implements ZhibiaoService{

	@Autowired
	ZhibiaoMapper zhibiaoMapper;
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.deleteByPrimaryKey(id);
	}

	public int insert(Zhibiao record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Zhibiao record) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.insertSelective(record);
	}

	public Zhibiao selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Zhibiao record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKeySelective(Zhibiao record) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.updateByPrimaryKeySelective(record);
	}

	public List<Zhibiao> selectByStu(Integer sid) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.selectByStu(sid);
	}

	public List<Zhibiao> selectList() {
		// TODO Auto-generated method stub
		return zhibiaoMapper.selectList();
	}

	public List<Zhibiao> unStu(Integer sid) {
		// TODO Auto-generated method stub
		return zhibiaoMapper.unStu(sid);
	}

}
