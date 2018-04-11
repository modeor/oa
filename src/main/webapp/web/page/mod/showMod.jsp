<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showMod.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<link rel="stylesheet" type="text/css" href="web/css/mainstyle.css" />
	<link rel="stylesheet" type="text/css" href="web/css/page.css" />
	<style type="text/css">
		.textShadow{
			font-size:18px;
			text-shadow:black 2px 2px 2px;
			-ms-filter: "progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#000000', positive='true')"; /* IE8+ */
			filter: progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#aaaaaa', positive='true') /* IE and lower */
		}
		#userinfo td,th{
			height:30px;
			line-height:30px;
		}
		
		#userinfo tr{
			border-bottom:1px solid #cccccc;
		}
	</style>
	<script type="text/javascript" src="web/js/mainjs.js"></script>

  </head>
  
  <body>
    <div align="center">
	<table width="600" height="395">
		<tr>
			<td height="60" align="left" colspan="3"
				style="background-image:url(web/imgs/modulebar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">模块管理</p>
			</td>
		</tr>
		<tr>
			<td width="600" align="center" height="300px" colspan="3">
			<!-- 分页显示用户数据 -->
			<table width="580" id="userinfo" cellpadding="0" cellspacing="0">
				<tr>
					<th width="30" align="center">ID</th>
					<th width="150">模块名称</th>
					<th width="150">父模块名称</th>
					<th width="180">模块地址</th>
					<th width="70">相关操作</th>
				</tr>
				<s:iterator value="#request.pv.pageList">
				<tr>
					<td align="center"><s:property value="m_id"/></td>
					<td align="center"><a href="bfmod/mod.action?mid=<s:property value="m_id"/>"><s:property value="m_name"/></a></td>
					<td align="center"><s:property value="parent.m_name"/></td>
					<td align="center"><s:property value="m_address"/></td>
					<td align="center"><a href="#">删除</a></td>
				</tr>
				</s:iterator>
			</table>
			</td>
		</tr>
		<tr>
			<td height="35px" width="140">

			</td>
			<td width="110" style="height:35px;line-height:35px" align="left" valign="top">
				
				<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="openWindow('bfmod/mod_openAddMod.action',315,280,'addmod')">
					添加模块
				</div>
			</td>
			<td width="350" height="35" align="center">
				<div style="width:340px; height:12px;">
				<ul id="pagination-digg">
					<li class="next"><a href="?page=8">首页&raquo;</a></li>
  					<li class="previous-off">&laquo;上一页</li>
    					<li class="active">1</li>
    					<li><a href="?page=2">2</a></li>
    					<li><a href="?page=3">3</a></li>
    					<li><a href="?page=4">4</a></li>
    					<li><a href="?page=5">5</a></li>
    					<li class="next"><a href="?page=8">下一页&raquo;</a></li>
					<li class="next"><a href="?page=8">尾页&raquo;</a></li>
				</ul>
				</div>
			</td>
		</tr>
	</table>
	</div>
  </body>
</html>
