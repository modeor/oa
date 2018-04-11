<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectemp.jsp' starting page</title>
    
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
		
		.pagebar li{
			list-style:none;
			float:left;
			height:30px
		}
		.pagebar li a{
			text-decoration:none;
			padding:2px 5px}
	</style>
	<script type="text/javascript" src="web/js/mainjs.js"></script>
	<script type="text/javascript">
	   function t_submit(id,name) {
		   window.opener.document.getElementById("empName").value = name;
		   window.opener.document.getElementById("e_id").value = id;
		   window.close();
	   }
	</script>
  </head>
  
  <body>
   <div align="center">
	<table width="800" height="400">
		<tr>
			<td height="60" align="left" colspan="3"
				style="background-image:url(web/imgs/selectempbar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">用户选择</p>
			</td>
		</tr>
		<tr>
			<td width="800" align="center" height="300px" colspan="3">
			<!-- 分页显示用户数据 -->
			<table width="780" id="userinfo" cellpadding="0" cellspacing="0">
				<tr>
				    <th width="30" align="center"></th>
					<th width="50" align="center">用户ID</th>
					<th width="60">姓名</th>
					<th width="30">性别</th>
					<th width="30">年龄</th>
					<th width="120">职位</th>
					<th width="120">电话</th>
					<th width="200">地址</th>
					<th width="170">描述</th>
				</tr>
				<s:iterator value="#request.emps">
				<tr>
				    <td><input type="radio" name="radio" onclick="t_submit(<s:property value="emp_id"/>,'<s:property value="emp_name"/>')"/></td>
					<td><s:property value="emp_id"/></td>
					<td><a href="#"><s:property value="emp_name"/></a></td>
					<td><s:property value="emp_sex"/></td>
					<td>18</td>
					<td><s:property value="emp_job"/></td>
					<td><s:property value="emp_phone"/></td>
					<td><s:property value="emp_address"/></td>
					<td><s:property value="emp_sn"/></td>
				</tr>
				</s:iterator>
			</table>
			</td>
		</tr>
		<tr>
			<td height="40px" width="350" style="height:40px;line-height:40px" align="left">
				&nbsp;&nbsp;
				搜索项：
				<select style="height:20px">
					<option selected="selected">姓名</option>
					<option>性别</option>
					<option>年龄</option>
				</select>
				搜索内容:
				<input type="text" name="searchvalue" />
			</td>
			<td width="110" style="height:40px;line-height:40px" align="left">
				<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')">
					开始搜索
				</div>
			</td>
			<td width="340" height="40" align="center">
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
