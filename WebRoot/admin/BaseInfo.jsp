<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<<<<<<< HEAD
=======
<head>
<base href="<%=basePath%>">

<title>My JSP 'user1.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/icon.css">
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.easyui.min.js"
	charset="utf-8"></script>
<<<<<<< HEAD
<script type="text/javascript"
	src="<%=basePath%>/highchart/code/highcharts.js"></script>
	<script type="text/javascript"
	src="<%=basePath%>/highchart/code/modules/exporting.js"></script>
>>>>>>> c32516e224b90a80c1d2ab87727a4b0cb81eae8e
<head>
<base href="<%=basePath%>">

<title>My JSP 'user1.jsp' starting page</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/icon.css">
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.easyui.min.js"
	charset="utf-8"></script>
<<<<<<< HEAD
<script type="text/javascript"
	src="<%=basePath%>/highchart/code/highcharts.js"></script>
	<script type="text/javascript"
	src="<%=basePath%>/highchart/code/modules/exporting.js"></script>
<head>
<base href="<%=basePath%>">

<title>My JSP 'user1.jsp' starting page</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyUI/jquery-easyui-1.3.2/themes/icon.css">
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyUI/jquery-easyui-1.3.2/jquery.easyui.min.js"
	charset="utf-8"></script>
=======
=======

  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user1.jsp' starting page</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/easyUI/jquery-easyui-1.3.2/themes/default/easyui.css" >
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/easyUI/jquery-easyui-1.3.2/themes/icon.css">
	<script type="text/javascript" src="<%=basePath %>/easyUI/jquery-easyui-1.3.2/jquery.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=basePath %>/easyUI/jquery-easyui-1.3.2/jquery.easyui.min.js" charset="utf-8"></script>
>>>>>>> 9b9aee380b03c152f24fb429f1d11f8db1905faa
>>>>>>> c32516e224b90a80c1d2ab87727a4b0cb81eae8e

<script type="text/javascript">  
    $(function() {  
        $('#commUserDatagrid').datagrid({  
            title : '学生信息列表',  
            iconCls : 'icon-ok',  
            width : 1080,  
            pageSize : 5,//默认选择的分页是每页5行数据  
            pageList : [1, 5, 10, 15, 20 ],//可以选择的分页集合  
            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮 
            toolbar:"#tb",//在添加 增添、删除、修改操作的按钮要用到这个  
            url:'getAllStudentBaseInfo.action',//url调用Action方法  
            loadMsg : '数据装载中......',  
            
            nowrap:false,  
            fitColumns:true,//允许表格自动缩放，以适应父容器   
            fit:false,//允许表格自动缩放，以适应父容器  
            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
            singleSelect: false, //允许选择多行  
            selectOnCheck: true,//true勾选会选择行，false勾选不选择行, 1.3以后有此选项。重点在这里  
            checkOnSelect: true, //true选择行勾选，false选择行不勾选, 1.3以后有此选项  
            remoteSort : false,  
             frozenColumns : [ [ {  
                field : 'ck',  
                checkbox : true  
            } ] ],   
            pagination : true,//分页  
            rownumbers : true//行数  
        });   
          
    });  
    
	 function formatOper2(val,row,index){ 
    	return '<a href="javascript:void(0)" onclick="deletedata()">删除</a>';   
	}  
	
	function formatOper2_1(val,row,index){ 
    	return '<a href="javascript:void(0)" onclick="changeInfo2('+index+')">修改信息</a>';   
	}  
	function changeInfo2(index){
		$('#commUserDatagrid').datagrid('selectRow',index);// 关键在这里    
    	var rows = $("#commUserDatagrid").datagrid("getSelections");
    	if (rows.length==1){    
            var url = '<%=basePath%>getUserByUserName.action?stuName='+rows[0].name;
            window.location.href=url;
        }  
	}
	
	function doSearch(value){
	
	$('#commUserDatagrid').datagrid({  
            title : '学生信息列表',  
            iconCls : 'icon-ok',  
            width : 1080,  
            pageSize : 5,//默认选择的分页是每页5行数据  
            pageList : [1, 5, 10, 15, 20 ],//可以选择的分页集合  
            nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮 
            toolbar:"#tb",//在添加 增添、删除、修改操作的按钮要用到这个  
            url:'getAllStudentBaseInfo.action?keyword='+value,//url调用Action方法  
            loadMsg : '数据装载中......',  
            
            nowrap:false,  
            fitColumns:true,//允许表格自动缩放，以适应父容器   
            fit:false,//允许表格自动缩放，以适应父容器  
            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
            singleSelect: false, //允许选择多行  
            selectOnCheck: true,//true勾选会选择行，false勾选不选择行, 1.3以后有此选项。重点在这里  
            checkOnSelect: true, //true选择行勾选，false选择行不勾选, 1.3以后有此选项  
            
            remoteSort : false,  
             frozenColumns : [ [ {  
                field : 'ck',  
                checkbox : true  
            } ] ],   
            pagination : true,//分页  
            rownumbers : true//行数  
        });   
}
function download_moban(){
	 window.location.href="../moban.xls";
}
function deletedata() {  
        //返回选中多行  
        var selRow = $('#commUserDatagrid').datagrid('getSelections')  
        //判断是否选中行  
        if (selRow.length==0) {  
            $.messager.alert("提示", "请选择要删除的行！", "info");  
            return;  
        }else{      
            var temID="";  
            //批量获取选中行的ID  
            for (var i = 0; i < selRow.length;i++) {  
                if (temID =="") {  
                    temID = selRow[i].number;  
                } else {  
                    temID = selRow[i].number + "," + temID;  
                }                 
            }  
                        
            $.messager.confirm('提示', '是否删除选中数据?', function (r) {  
  
                if (!r) {  
                    return;  
                }  
                alert(temID);
                //提交  
                $.ajax({  
                    type: "POST",  
                    async: false,  
                    url: "deleteStuByIds.action?stuIds=" + temID,  
                    data: temID,  
                    success: function (result) {  
                    	alert(result);
                        if (result.indexOf("t") <= 0) {  
                            $('#commUserDatagrid').datagrid('clearSelections');  
                            $.messager.alert("提示", "恭喜您，信息删除成功！", "info");  
                            $('#commUserDatagrid').datagrid('reload');  
                        } else {  
                            $.messager.alert("提示", "删除失败，请重新操作！", "info");  
                            return;  
                        }  
                    }  
                });  
            });  
  
        }  
    };  
function createGraphic() {
	alert("createGraphic()  进来了")
	  var x = [];//X轴
      var y = [];//Y轴
      var xtext = [];//X轴TEXT
      var sTest="";
      var testA=[];
      var color = ["#FFB6C1","#DC143C","#C71585","#D8BFD8","#8B008B","#4B0082","#6A5ACD","#0000FF","#B0C4DE","#1E90FF","#00CED1","#228B22"];
           $.ajax({
                type:'post',
                url:'getAllStudentBaseInfoNoTotal.action',
                success:function(data){
                            var json = eval("("+data+")");//转换数据                           
                            for(var key in json.rows){
                                json.rows[key].y = json.rows[key].credit; //给Y轴赋值
                                xtext = json.rows[key].name;//给X轴TEXT赋值
                                sTest+=json.rows[key].name+",";
                                json.rows[key].color= color[key];
                            }
                            sTest=sTest.substring(0,sTest.length-1);
                            testA=sTest.split(",");
                            
                     //新建图表    
                            chart = new Highcharts.Chart({ 
                                chart: { 
                                    renderTo: 'container',           //图表放置的容器，关联DIV#id  
                                    type: 'column',                    //柱状图
                                    reflow:true                    //自适应div的大小 
                                }, 
                                title: { 
                                    text: '学生信用分图表'            //图表标题  
                                }, 
                                xAxis: {                            //X轴标签  
                                    
                                    labels:{
                                    	formatter: function() {
                                    		if(this.value==testA[testA.length-1]){
                                    			this.value=0;
                                    		}
            								return testA[this.value];
        								}
                                    },
                                    categories:[xtext]
                                    //categories:[sTest]
                                }, 
                                yAxis: {                            //设置Y轴 
                                    title: { 
                                        text: '信用分 (分)' 
                                    } 
                                },
                                credits:{                          //右下角文本不显示
                                   enabled: false
                                },
                                tooltip:{                        //鼠标移动到图形上时显示的提示框     
                                      headerFormat: '{series.name}：<span style="font-size:12px"><b>{point.key}</b></span><table>',
                                      pointFormat: '<tr><td>信用分： </td>' +
                                         '<td style="padding:0"><b>{point.y} </b></td></tr>',
                                      footerFormat: '</table>',
                                      shared: true,
                                      useHTML: true
                                 
                                },
                                series:[{
                                 name:"姓名"
                                  
                               }]  
                           }), 
                    chart.series[0].setData(json.rows);//数据填充到highcharts上面
                    },
                    error:function(e){
                    	aletr("出错了");
                    }
 
 });
}
</script>
</head>

<body>

	<div id="tb">
		<input id="keyword" name="keyword" class="easyui-searchbox"
			searcher="doSearch" prompt="请输入学号搜索"
			style="width: 130px; vertical-align: middle;"></input>
		<button id="delete_button" class="easyui-submit"
			onclick="deletedata()">批量删除</button>
		<button id="download_moban_button" class="easyui-submit"
			onclick="download_moban()">下载批量添加模板</button>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c32516e224b90a80c1d2ab87727a4b0cb81eae8e
		<button id="createGraphicButton" class="easyui-submit"
			onclick="createGraphic()">生成图标</button>
		<form id="addForm" method="post" action="batchIncrease.action"
			enctype="multipart/form-data">
			<font>批量添加:</font> <input class="easyui-filebox" name="source"
				id="source_sign" data-options="buttonText:'请选择文件'" />
<<<<<<< HEAD
=======
=======
		<form id="addForm" method="post"
			action="batchIncrease.action" enctype="multipart/form-data">
			<font>批量添加:</font>
			<input class="easyui-filebox" name="source"
				id="source_sign" data-options="buttonText:'请选择文件'"/>
>>>>>>> 9b9aee380b03c152f24fb429f1d11f8db1905faa
>>>>>>> c32516e224b90a80c1d2ab87727a4b0cb81eae8e
			<button id="submit_button" class="easyui-submit">添加</button>
		</form>
	</div>
	<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
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
					<th
						data-options="field:'_operate2',width:80,align:'center',formatter:formatOper2"></th>
					<th
						data-options="field:'_operate2_1',width:80,align:'center',formatter:formatOper2_1"></th>
				</tr>
			</thead>
		</table>

	</div>

</body>
</html>

