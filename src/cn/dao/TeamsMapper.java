package cn.dao;

import java.util.List;

import cn.entity.Teams;

public interface TeamsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Teams record);

    int insertSelective(Teams record);

    Teams selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Teams record);

    int updateByPrimaryKey(Teams record);
    
    List<Teams> selectList();
}