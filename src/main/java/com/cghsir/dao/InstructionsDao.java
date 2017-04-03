package com.cghsir.dao;

import java.util.List;

import com.cghsir.model.Instructions;
/**
 * @author cghsir
 * @datetime 2017年4月2日 22:47:25
 * @description 指令dao
 */
public interface InstructionsDao {
	
	/**
	 * 根据主键删除一个对象
	 * @param id
	 * @return
	 */
    int deleteByPrimaryKey(String id);

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
    int insertSelective(Instructions record) throws Exception;

    /**
     * 根据主键查询一个对象
     * @param id
     * @return
     */
    Instructions selectByPrimaryKey(String id);

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

    /**
     * 根据一个对象查询列表
     * @param record
     * @return
     */
	List<Instructions> queryList(Instructions record);
}