package cn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import cn.entity.User;

public interface UserService {
	 int deleteByPrimaryKey(Integer id);

	    int insert(User record);

	    int insertSelective(User record);

	    User selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(User record);

	    int updateByPrimaryKey(User record);
	    
	  
	    
	   
	    
	    User getlogin(String username,String password,String role);
}
