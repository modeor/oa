<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addgroup.jsp' starting page</title>
    
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
	<script type="text/javascript">
	  function t_test() {
		  document.getElementById("f1").submit();
	  }
	</script>
  </head>
  
  <body>
    <div align="center">
    <form action="bfgrp/grp_addGrp.action" method="post" id="f1">
	<table width="300" height="150">
		<tr>
			<td height="60" align="left" 
				style="background-image:url(web/imgs/addgroupbar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">添加组</p>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="left">
				&nbsp;组名：<input type="text" name="grp.g_name"  />
			</td>
		</tr>
		<tr>
			<td class="inputline" align="left">
				&nbsp;编号：<input type="text" name="grp.g_sn"  />
			</td>
		</tr>
		<tr>
			<td class="inputline" align="center">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_test()">
					提交
			</div>
			</td>
		</tr>
	</table>
	</form>
	</div>
  </body>
</html>
