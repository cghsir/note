package com.cghsir.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


@Target(ElementType.FIELD)//注解目标字段
@Retention(RetentionPolicy.RUNTIME)//在运行时有效（即运行时保留）
public @interface Description {
	String value();
}
