package com.cghsir.service;

import com.cghsir.model.Instructions;

/**
 * @author cghsir
 * @datetime 2017年4月2日 22:50:45
 * @description 指令service接口
 */
public interface InstructionsServiceI {
	
	/**
	 * 根据主键删除一个对象
	 * @param id
	 * @return
	 */
    int deleteByPrimaryKey(Integer id);

    /**
     * 新增一个对象
     * @param record
     * @return
     */
    int insert(Instructions record);

    /**
     * 动态新增一个对象
     * @param record
     * @return
     */
    int insertSelective(Instructions record);

    /**
     * 根据主键查询一个对象
     * @param id
     * @return
     */
    Instructions selectByPrimaryKey(Integer id);

    /**
     * 动态更新一条记录
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Instructions record);

    /**
     * 更新一条记录
     * @param record
     * @return
     */
    int updateByPrimaryKey(Instructions record);
    
}
