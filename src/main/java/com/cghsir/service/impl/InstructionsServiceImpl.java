package com.cghsir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cghsir.dao.InstructionsDao;
import com.cghsir.model.Instructions;
import com.cghsir.service.InstructionsServiceI;

/**
 * @author cghsir
 * @datetime 2017年4月2日 22:52:02
 * @description 指令service实现
 */
@Service
public class InstructionsServiceImpl implements InstructionsServiceI {

	@Autowired
	private InstructionsDao instructionsDao;
	
	/**
	 * 根据主键删除一个对象
	 * @param id
	 * @return
	 */
	public int deleteByPrimaryKey(String id) {
		return instructionsDao.deleteByPrimaryKey(id);
	}

	/**
     * 新增一个对象
     * @param record
     * @return
     */
	public int insert(Instructions record) {
		return instructionsDao.insert(record);
	}

	/**
     * 动态新增一个对象
     * @param record
     * @return
	 * @throws Exception 
     */
	public int insertSelective(Instructions record) throws Exception {
		return instructionsDao.insertSelective(record);
	}

	/**
     * 根据主键查询一个对象
     * @param id
     * @return
     */
	public Instructions selectByPrimaryKey(String id) {
		return instructionsDao.selectByPrimaryKey(id);
	}

	/**
     * 动态更新一条记录
     * @param record
     * @return
     */
	public int updateByPrimaryKeySelective(Instructions record) {
		return instructionsDao.updateByPrimaryKeySelective(record);
	}

	/**
     * 更新一条记录
     * @param record
     * @return
     */
	public int updateByPrimaryKey(Instructions record) {
		return instructionsDao.updateByPrimaryKey(record);
	}

	/**
     * 根据一个对象查询列表
     * @param record
     * @return
     */
	@Override
	public List<Instructions> queryList(Instructions record) {
		return instructionsDao.queryList(record);
	}

}
