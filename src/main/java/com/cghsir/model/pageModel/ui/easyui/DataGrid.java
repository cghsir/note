package com.cghsir.model.pageModel.ui.easyui;

import java.util.ArrayList;
import java.util.List;

/**
 * @author cghsir
 * @datetime 2017年4月2日 22:25:58
 * @description easyui datagrid json 数据模型
 */
public class DataGrid {
	
	//datagrid 记录数
	private Long total = 0L;
	
	//datagrid 数据
	@SuppressWarnings("rawtypes")
	private List rows = new ArrayList();
	
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	@SuppressWarnings("rawtypes")
	public List getRows() {
		return rows;
	}
	@SuppressWarnings("rawtypes")
	public void setRows(List rows) {
		this.rows = rows;
	}
	
	public DataGrid() {
		super();
	}
	
	@SuppressWarnings("rawtypes")
	public DataGrid(Long total, List rows) {
		super();
		this.total = total;
		this.rows = rows;
	}
	
	
}
