package com.cghsir.model.pageModel.response;
/**
 * @author cghsir
 * @datetime 2017年4月2日 21:40:29
 * @description 指令模型 
 */
import java.util.Date;

import com.cghsir.annotation.Description;

public class InstructionsResponse {
	
	//主键
	@Description("主键")
    private String id;

    //指令
	@Description("指令")
    private String instructions;

    //描述
	@Description("描述")
    private String description;

    //创建时间
	@Description("创建时间")
    private Date createTime;

    //创建人
	@Description("创建人")
    private String creator;

    //修正时间
	@Description("修正时间")
    private Date revisionTime;

    //修正人
	@Description("修正人")
    private String revisor;

    //备注
	@Description("备注")
    private String remarks;

    //删除标志
	@Description("删除标志")
    private String isDelete;

	//外键
	@Description("外键")
    private String pid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions == null ? null : instructions.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    public Date getRevisionTime() {
        return revisionTime;
    }

    public void setRevisionTime(Date revisionTime) {
        this.revisionTime = revisionTime;
    }

    public String getRevisor() {
        return revisor;
    }

    public void setRevisor(String revisor) {
        this.revisor = revisor == null ? null : revisor.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public String getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete == null ? null : isDelete.trim();
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }
}