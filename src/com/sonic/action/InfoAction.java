package com.sonic.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.opensymphony.xwork2.ActionSupport;
import com.sonic.pojo.StuBase;
import com.sonic.service.CreditCategoryService;
import com.sonic.service.InfoService;
import com.sonic.utills.DateJsonValueProcessor;

public class InfoAction extends ActionSupport {
	private JSONObject jsonObj; 
	private InfoService infoService;
	private String rows;// 每页显示的记录数  
    private String page;// 当前第几页 
    private StuBase user;
    private String userId;
    
    public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	public String getRows() {
		return rows;
	}
	public void setRows(String rows) {
		this.rows = rows;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public StuBase getUser() {
		return user;
	}
	public void setUser(StuBase user) {
		this.user = user;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	private void toBeJson(List list,int total) throws Exception{ 
    	JsonConfig jconfig = new JsonConfig();
    	JSONArray ja = new JSONArray(); 
    	jconfig.setIgnoreDefaultExcludes(false);
    	jconfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));

         HttpServletResponse response = ServletActionContext.getResponse();  
              
         JSONObject jobj = new JSONObject();//new一个JSON  
         jobj.accumulate("total",total );//total代表一共有多少数据  
         jobj.accumulate("rows", ja.fromObject(list,jconfig));//row是代表显示的页的数据  
  
         response.setCharacterEncoding("utf-8");//指定为utf-8  
         response.getWriter().write(jobj.toString());     
    }  
	//获取所有通知
    public String getAllInfo() { 
    	
        try {
			toBeJson(infoService.getAllInfoList(page, rows),infoService.getInfoTotal());
			//authority = null;
			
        } catch (Exception e) {
			e.printStackTrace();
		}
        return null;  
    }  
}
