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
    
    <title>My JSP 'user1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/easyUI/jquery-easyui-1.3.2/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/easyUI/jquery-easyui-1.3.2/themes/icon.css">
	<script type="text/javascript" src="<%=basePath %>/easyUI/jquery-easyui-1.3.2/jquery-1.8.0.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=basePath %>/easyUI/jquery-easyui-1.3.2/jquery.easyui.min.js" charset="utf-8"></script>
<script type="text/javascript">  
    $(function() {  
        $('#commUserDatagrid').datagrid({  
            title : '普通用户列表',  
            iconCls : 'icon-ok',  
            width : 1080,  
            pageSize : 5,//默认选择的分页是每页5行数据  
            pageList : [1, 5, 10, 15, 20 ],//可以选择的分页集合  
            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮 
            toolbar:"#tb2",//在添加 增添、删除、修改操作的按钮要用到这个  
            url:'getAllStudentBaseInfo.action',//url调用Action方法  
            loadMsg : '数据装载中......',  
            singleSelect:true,//为true时只能选择单行 
            nowrap:false,  
            fitColumns:true,//允许表格自动缩放，以适应父容器   
            fit:false,//允许表格自动缩放，以适应父容器  
            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
            remoteSort : false,  
             frozenColumns : [ [ {  
                field : 'ck',  
                checkbox : true  
            } ] ],   
            pagination : true,//分页  
            rownumbers : true//行数  
        });   
          
    });  
    
    <%-- function formatOper2(val,row,index){ 
    	return '<a href="javascript:void(0)" onclick="changeInfo2('+index+')">修改信息</a>';   
	}  
	function changeInfo2(index){
		$('#commUserDatagrid').datagrid('selectRow',index);// 关键在这里    
    	var rows = $("#commUserDatagrid").datagrid("getSelections");
    	if (rows.length==1){    
            var url = '<%=basePath %>getUserByUserId.action?userId='+rows[0].username;
            window.location.href=url;
        }  
	}  --%>
	 function formatOper2(val,row,index){ 
    	return '<a href="javascript:void(0)" onclick="delete2('+index+')">删除</a>';   
	}  
	function delete2(index){
		$('#commUserDatagrid').datagrid('selectRow',index);// 关键在这里    
    	var rows = $("#commUserDatagrid").datagrid("getSelections");
    	if (rows.length==1){    
            var url = '<%=basePath %>deleteStuById.action?stuId='+rows[0].number;
             window.location.href=url;
        }  
	}
	function formatOper2_1(val,row,index){ 
    	return '<a href="javascript:void(0)" onclick="changeInfo2('+index+')">修改信息</a>';   
	}  
	function changeInfo2(index){
		$('#commUserDatagrid').datagrid('selectRow',index);// 关键在这里    
    	var rows = $("#commUserDatagrid").datagrid("getSelections");
    	if (rows.length==1){    
            var url = '<%=basePath %>getUserByUserName.action?stuName='+rows[0].name;
            window.location.href=url;
        }  
	}
	
	function changeUrl(){
		alert("进来了");
		/* $('#commUserDatagrid').datagrid('url','stuSearch.action');// 关键在这里     */
    	/* $("#commUserDatagrid").datagrid('options').url="stuSearch.action";
		$("#commUserDatagrid").datagrid('load'); */
		$('#commUserDatagrid').datagrid({  
    		url:'stuSearch.action'  
   			
		});  
	}
</script>  
  </head>
  
  <body>
  <s:form action="stuSearch.action" method="post" enctype="multipart/form-data" theme="simple" onclick="changeUrl()">
  		 <span id="userPwdTip">&nbsp;输入关键字:</span>
  		 <input type="text" name="keyword"> &nbsp;&nbsp;&nbsp;&nbsp;
  		 <input type="submit" value="搜索">
  </s:form>
    <div style="margin: 10px 0px 0px 15px">
	<table id="commUserDatagrid">  
       <thead>  
            <tr>  
                <th data-options="field:'number',width:100,align:'center'">序号</th> 
                <th data-options="field:'name',width:100,align:'center'">账号</th>  
                <th data-options="field:'pwd',width:100,align:'center'">密码</th>  
                <th data-options="field:'college',width:100,align:'center'">院系</th> 
                <th data-options="field:'class_',width:100,align:'center'">班级</th>
                <th data-options="field:'credit',width:80,align:'center'">信用分</th>
                <th data-options="field:'_operate2',width:80,align:'center',formatter:formatOper2"></th>
                <th data-options="field:'_operate2_1',width:80,align:'center',formatter:formatOper2_1"></th>
            </tr>  
        </thead>  
    </table>
   
    </div>
    
  </body>
</html>
