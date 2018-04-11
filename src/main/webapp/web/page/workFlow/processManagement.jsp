<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'processManagement.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<link rel="stylesheet" type="text/css" href="web/css/mainstyle.css" />
	<script type="text/javascript" src="web/js/mainjs.js"></script>
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
      function t_submit() {
    	  document.getElementById("f1").submit();
      }
    </script>
  </head>
  
  <body onload="init()">
	<div align="center">
	<table width="380" height="210" class="normalTable">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/processMangement.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">流程管理</p>
			</td>
		</tr>
		<tr>
			<td align="right" width="25%">
				流程名：
			</td>
			<td align="left" width="75%">
				<select class="textbox">
					<s:iterator value="#request.wfs">
					  <option value=""><s:property value="wf_name"/></option>
					</s:iterator>
				</select>
				
				&nbsp;&nbsp;
				<a href="#">删除定义</a>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				--------------------------添加流程--------------------------
			</td>
		</tr>
		<form action="bfwf/wf_deployProcess.action" method="post" enctype="multipart/form-data" id="f1">
		<tr>
			<td align="right">
				流程定义文件：
			</td>
			<td align="left">

					<div class="uploader_line">
					  <span>
					   <input name="" type="text" id="viewfile" onmouseout="$('#upload').css('display','none');" class="uploader_text" style="width:200px" />
					  </span>
					  <label for="unload" onmouseover="$('#upload').css('display','block');" class="uploader_button">浏览...</label>
					  <input name="processFile" type="file" onchange="$('#viewfile').attr('value',this.value);$(this).css('display','none');" class="uploader" id="upload"
					  name="imageFile" />
					</div>
					
			</td>
		</tr>
		<tr>
			<td align="right">
				流程定义图：
			</td>
			<td align="left">

					<div class="uploader_line">
					  <span>
					   <input name="" type="text" id="viewfile2" onmouseout="$('#upload2').css('display','none');" class="uploader_text" style="width:200px" />
					  </span>
					  <label for="unload" onmouseover="$('#upload2').css('display','block');" class="uploader_button">浏览...</label>
					  <input name="processImg" type="file" onchange="$('#viewfile2').attr('value',this.value);$(this).css('display','none');" class="uploader" id="upload2"
					  name="imageFile" />
					</div>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_submit()">
					添加流程
			</div>
			</td>
		</tr>
	</table>
	</div>
	</form>
</body>
</html>
