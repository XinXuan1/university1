package cn.dao;

import org.apache.ibatis.annotations.Param;

import cn.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User getlogin(@Param("username") String username,@Param("password") String password,@Param("role") String role);
}