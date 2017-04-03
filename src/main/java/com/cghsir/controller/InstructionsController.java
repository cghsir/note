package com.cghsir.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.PropertyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.classic.gaffer.PropertyUtil;

import com.cghsir.common.UtilProcess;
import com.cghsir.model.Instructions;
import com.cghsir.model.pageModel.request.InstructionsRequest;
import com.cghsir.model.pageModel.response.InstructionsResponse;
import com.cghsir.model.pageModel.util.Json;
import com.cghsir.service.InstructionsServiceI;

/**
 * @author cghsir
 * @datetime 2017年4月2日 23:03:13
 * @description 指令controller
 */
@Controller
@RequestMapping("/instructions")
public class InstructionsController {
	
	private static final Logger logger = LoggerFactory.getLogger(InstructionsController.class);
	
	@Resource
	private InstructionsServiceI instructionsService;
	
	@RequestMapping("/selectByPrimaryKey")
	@ResponseBody
	public Json selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		Instructions instructions = new Instructions();
//		instructions = instructionsService.selectByPrimaryKey("1");
//		UtilProcess.writeJson(instructions, response);
		Json json = new Json();
		json.setSuccess(true);
		json.setMsg("执行成功");
		return json;
	}
	
	@RequestMapping("/insertSelective")
	@ResponseBody
	public Json insertSelective(HttpServletRequest request, HttpServletResponse response,InstructionsRequest instructionsRequest){
		Json json = new Json();
		//要保存的数据模型
		Instructions instructions = new Instructions();
		//设置主键
		instructions.setId(UtilProcess.getPrimaryKey());
		json.setMsg("保存成功");
		json.setSuccess(true);
		//将页面模型数据copy到 要保存的数据模型上
		try {
			PropertyUtils.copyProperties(instructions, instructionsRequest);
			//保存
			instructionsService.insertSelective(instructions);
			//要返回的数据模型
			InstructionsResponse instructionsResponse = new InstructionsResponse();
			PropertyUtils.copyProperties(instructionsResponse, instructions);
		} catch (Exception e) {
			json.setSuccess(false);
			json.setMsg("系统异常");
			logger.error("InstructionsController.insertSelective error: ",e);
		}
		return json;
//		//TODO 异常处理 以后处理成跳转到错误页面
//		UtilProcess.writeJson(json, response);
	}
}
