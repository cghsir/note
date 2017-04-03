package com.cghsir.common;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;

/**
 * @author cghsir
 * @datetime 2017年4月4日 01:17:04
 * @description 对vo对象操作的公用方法
 */
public class UtilVoHelper {
	
	public static  <T> List<T> conversionList(List<?> list,  Class<T> clazz) throws Exception {
		// 非空判断
		if (list == null || list.size() == 0) {
			return new ArrayList<T>();
		}

		// 方法返回值
		List<T> retList = new ArrayList<T>();

		for (int i = 0; i < list.size(); i++) {
			
			// 重新实例化一个类
			T newObj = clazz.newInstance();
			Object oldObj = list.get(i);
			
			//把一个类的属性值复制到另一个类
			PropertyUtils.copyProperties(newObj, oldObj);
			retList.add(newObj);
		}
		return retList;
	}
}
