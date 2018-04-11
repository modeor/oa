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
    
    <title>My JSP 'addDepartment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<link rel="stylesheet" type="text/css" href="web/css/mainstyle.css" />
	<link rel="stylesheet" type="text/css" href="web/css/page.css" />
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<script type="text/javascript" src="web/js/mainjs.js"></script>
	<style type="text/css">
		.tinfo td{height:30px; line-height:30px}
		#depByPage td,th{
			height:30px;
			line-height:30px;
		}
		
		#depByPage tr{
			border-bottom:1px solid #cccccc;
		}
		
		#addDeptTable td{
			height:30px;
			line-height:30px;
			vertical-align:middle
		}
	</style>
	
	<script type="text/javascript">
	  function addDep() {
		 $('#f1').submit(); 
	  }
	</script>

  </head>
  
  <body>
    <div align="center">
	<table width="600" height="460" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" align="left" height="60"
				style=" height:60px;line-height:60px;
						background-image:url(web/imgs/accountbar.jpg);
						">
				<table cellpadding="0" cellspacing="0" height="60">
					<tr>
						<td width="70" rowspan="2" ></td>
						<td width="430" rowspan="2" >
						<p style="color:#0066ff; font-size:18px;" class="textShadow">
				 		部门管理</p>						</td>
						<td width="90" height="40" style="height:40px; line-height:40px;vertical-align:bottom">
						</td>
					</tr>
					<tr>
					  <td height="20" style="height:20px; line-height:20px;vertical-align:middle" valign="middle">
					  <a href="#" style="height:14px;line-height:14px;">&laquo;返回部门管理</a>
					  </td>
				  </tr>
				</table>

			</td>
		</tr>
		<tr>
			<td valign="top" align="center">
				<!-- 部门分页列表 -->
				<table width="98%" height="140" cellpadding="0" cellspacing="0" id="depByPage">
					<tr>
						<th width="5%">ID</th>
						<th width="15%">部门编号</th>
						<th width="20%">部门名称</th>
						<th width="20%">上级部门</th>
						<th width="40%">部门描述</th>
					</tr>
					<s:iterator value="deps">
					<tr>
						<td align="center"><s:property value="dep_id"/></td>
						<td align="center"><s:property value="dep_sn"/></td>
						<td align="center"><s:property value="dep_name"/></td>
						<td align="center"><s:property value="dep_name"/></td>
						<td align="center"><s:property value="dep_desc"/></td>
					</tr>
					</s:iterator>
					<tr>
						<td colspan="5" style=" height:20px; line-height:20px; border-bottom:0px none;">
						<!-- 分页标签 -->
						<div style="width:340px; float:right">
						<ul id="pagination-digg">
							<li class="next"><a href="?page=8">首页</a></li>
							<li class="previous-off">&laquo;上一页</li>
								<li class="active">1</li>
								<li><a href="?page=2">2</a></li>
								<li><a href="?page=3">3</a></li>
								<li><a href="?page=4">4</a></li>
								<li><a href="?page=5">5</a></li>
								<li class="next"><a href="?page=8">下一页&raquo;</a></li>
							<li class="next"><a href="?page=8">尾页</a></li>
						</ul>
						</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" style="height:260px">
				<br />
				<fieldset style="border:1px solid #cccccc; width:98%">
					<legend>查找部门</legend>
					<br />
					<form action="bfdep/dep_addDep.action" id="f1" method="post">
					<table id="addDeptTable" cellpadding="0" cellspacing="0" width="50%">
						<tr>
							<td align="right">上级部门:</td><td align="left">
							<select id="s" name="department.dep_id" class="textbox">
							 <option value="没有上级部门">--无上级部门--</option>
							 <s:iterator value="deps">
							   <option value='<s:property value="dep_id"/>'><s:property value="dep_name"/></option>
							 </s:iterator>
							</select>
							</td>
						</tr>
						<tr>
							<td align="right">部门编码:</td><td align="left"><input class="textbox" type="text" name="department.dep_sn"/></td>
						</tr>
						<tr>
							<td align="right">部门名称:</td><td align="left"><input class="textbox" type="text" name="department.dep_name"/></td>
						</tr>
						<tr>
							<td align="right" valign="top" style="vertical-align:top">部门描述:</td><td align="left">
							<textarea class="textbox" style="width:130px; height:50px" name="department.dep_desc"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="addDep()">
								添加
							</div>
							</td>
						</tr>
					</table>
					</form>
				</fieldset>

			</td>	
		</tr>
	</table>
	</div>
  </body>
</html>
