package cn.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


import cn.entity.Plans;

public interface PlansService {
	 int deleteByPrimaryKey(Integer id);

	    int insert(Plans record);

	    int insertSelective(Plans record);

	    Plans selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(Plans record);

	    int updateByPrimaryKey(Plans record);
	    
	    List<Plans> selectList(Integer csid,Integer dsid,Integer tsid);
	    
	    List<Map<String, Integer>> selectPlan(@Param("dsid")Integer dsid,@Param("tsid")Integer tsid);
	    
	    List<Plans> selectList1(Integer tsid);
}
