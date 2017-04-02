package com.cghsir.common;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.ValueFilter;

public class UtilProcess {
	
	// 日志工具
		private static final Logger logger = LoggerFactory.getLogger(UtilProcess.class);
	
	public static void writeJson(Object object, HttpServletResponse response) throws Exception {
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

}
