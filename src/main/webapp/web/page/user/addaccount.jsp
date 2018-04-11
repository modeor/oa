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
    
    <title>My JSP 'addaccount.jsp' starting page</title>
    
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
       function u_submit() {
       document.getElementById("form01").submit();
       }
     </script>
  </head>
  
  <body>
    <div align="center">
    <form action="bfuser/user_addUser.action" method="post" id="form01">
	<table width="400" height="150">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/addaccountbar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">添加账号</p>
			</td>
		</tr>
		<tr>
			<td class="inputline" width="200" align="left">
				&nbsp;用户组：<select name="user.group.g_id" style="width:120px">
				                <s:iterator value="#request.groups">
				                <option value="<s:property value="g_id"/>"><s:property value="g_name"/></option>
				                </s:iterator>
				              </select>
			</td>
			<td align="left">
			        <input type="hidden" name="user.emp.emp_id" id="e_id" value="">
				姓名：<input type="text" name="empName" style="width:80px" disabled="disabled" id="empName"/>
				<a href="javascript:void(openWindow('bfuser/user_getEmps.action',800,410,'select'))">选择</a>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="left">
				&nbsp;用户名：<input type="text" name="user.u_name" style="width:120px" />
			</td>
			<td align="left">
				密码：<input type="text" name="user.u_pwd" style="width:120px" />
			</td>
		</tr>
		<tr>
			<td class="inputline" align="center" colspan="2">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="u_submit()">
					提交
			</div>
			</td>
		</tr>
	</table>
	</form>
	</div>
  </body>
</html>
