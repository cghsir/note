package com.cghsir.common;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.ValueFilter;

public class UtilProcess {
	
	// 日志工具
		private static final Logger logger = LoggerFactory.getLogger(UtilProcess.class);
	
	public static void writeJson(Object object, HttpServletResponse response) throws IOException {
		ValueFilter filter = new ValueFilter() {
			public Object process(Object obj, String s, Object v) {
				if (v == null)
					return "";
				return v;
			}
		};
		String jobj = JSONArray.toJSONString(object, filter);
		response.setCharacterEncoding("utf-8");// 指定为utf-8
		response.getWriter().write(jobj);// 转化为JSOn格式
		logger.info(jobj);
	}
	
	
	/**
	 * 获取不带- 的UUID主键 
	 * @return 32位长度随机字符串
	 */
	public static String getPrimaryKey(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static void main(String[] args) {
		System.out.println(getPrimaryKey());
	}

}
