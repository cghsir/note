package com.cghsir.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cghsir.common.UtilProcess;
import com.cghsir.model.Instructions;
import com.cghsir.service.InstructionsServiceI;

/**
 * @author cghsir
 * @datetime 2017年4月2日 23:03:13
 * @description 指令controller
 */
@Controller
@RequestMapping("/instructions")
public class InstructionsController {
	
	@Resource
	private InstructionsServiceI instructionsService;
	
	@RequestMapping("/selectByPrimaryKey")
	public void selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws Exception{
		Instructions instructions = new Instructions();
		instructions = instructionsService.selectByPrimaryKey(1);
		UtilProcess.writeJson(instructions, response);
	}
}
