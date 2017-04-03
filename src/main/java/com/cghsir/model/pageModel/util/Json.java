package com.cghsir.model.pageModel.util;
/**
 * @author cghsir
 * @date 2017年4月2日 22:36:55
 * @description 返回信息工具模型
 */
public class Json implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;

	//执行标志
	private boolean success = false;
	
	//消息
	private String msg = "";
	
	//对象
	private Object obj = null;

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public Json(boolean success, String msg, Object obj) {
		super();
		this.success = success;
		this.msg = msg;
		this.obj = obj;
	}

	public Json() {
		super();
	}
	
}
