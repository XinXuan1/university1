package cn.service;

import java.util.List;

import cn.entity.Zhibiao;

public interface ZhibiaoService {
	int deleteByPrimaryKey(Integer id);

    int insert(Zhibiao record);

    int insertSelective(Zhibiao record);

    Zhibiao selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Zhibiao record);

    int updateByPrimaryKey(Zhibiao record);
    
    List<Zhibiao>  selectByStu(Integer sid);
    
    List<Zhibiao>  selectList();
    
    List<Zhibiao>  unStu(Integer sid);
}
