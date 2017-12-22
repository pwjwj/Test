<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsManager.jsp' starting page</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath %>/css/admin_stuinfo.css">
  </head>
  
  <body>
  
  <div class="header">
  <div class="center_title">新增通知</div>
  </div>
  	<div class="center_body">
    <s:form action = "addInfo.action" theme="simple">
    	<div class="info_center"><div class="title-left">通知标题：</div><s:textarea name = "infoTittle" placeholder="通知标题"  cssStyle="margin-bottom: 0%;height: 90%;width: 30%; resize: none;"/></div>
    	<div class="info_center"><div class="title-left">通知内容：</div><s:textarea name = "infoContent" placeholder="通知内容" cssStyle="margin-bottom: 0%;height: 90%;width: 30%; resize: none;"/></div>
    	
    	<div class="info_center"></div>
    	<div class="info_center"></div>
    	<div class="info_center"><s:submit value = "新增" cssStyle="cursor: pointer;font-size: 1.2em;color: white;height: 100%;width: 38%; margin:0 0 0 4%;background-color:#00a1d6;"/></div>
    </s:form>
    </div>
  </body>
</html>
