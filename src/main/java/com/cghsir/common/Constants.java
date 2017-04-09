package com.cghsir.common;

import org.springframework.util.StringUtils;

/**
 * @author cghsir
 * @date 2017年4月9日 11:05:01
 * @description 静态常量 不能被集成修改
 */
public final class Constants {

	/**
	 * 不被继承
	 */
	private Constants(){}
	
	
	/**
	 * @author Administrator
	 * @date 2017年4月9日 11:14:23
	 * @description 根路径枚举类 防止有目录改动
	 */
	public enum BaseDir{
		/**
		 * bootstrap根目录
		 */
		BOOTSTRAP_BASE_DIR(""),
		/**
		 * easyui根目录
		 */
		EASYUI_BASE_DIR("easyui/");
		
		private String dir;
		
		private BaseDir(String dir){
			this.dir = dir;
		}
		
		@Override
		public String toString(){
			return StringUtils.isEmpty(this.dir) ? "" : this.dir.toString();
		}
	}
	
	public static void main(String[] args) {
		System.out.println(Constants.BaseDir.EASYUI_BASE_DIR);
	}
}
