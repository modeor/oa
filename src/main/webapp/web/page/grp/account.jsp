<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.hx.bean.Group"%>
<%@page import="org.hx.bean.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'account.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<script type="text/javascript" src="web/js/dtree.js"></script>
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<link rel="stylesheet" type="text/css" href="web/css/dtree.css" />
	<style type="text/css">
		.textShadow{
			font-size:18px;
			text-shadow:black 2px 2px 2px;
			-ms-filter: "progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#000000', positive='true')"; /* IE8+ */
			filter: progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#aaaaaa', positive='true') /* IE and lower */
		}
		
		#accountInfo div{
		height:30px;
		line-height:30px;}
		
		.button{
			cursor:pointer;
			background-image:url(web/imgs/button_normal.jpg);
			width:102px;
			height:35px;
			text-align:center;
			line-height:35px
		}
	</style>
	<script type="text/javascript" src="web/js/mainjs.js"></script>
	
	<script type="text/javascript">
	   function t_delete(g_id) {
		   $("#ImpowerId").unbind("click");
		   $("#deleteId").unbind("click");
		   $("#deleteId").click(function(){
			   document.location = 'bfgrp/grp_deleteGrp.action?gid='+g_id;
		   });
		   $("#ImpowerId").click(function(){
			   openWindow('bfimpower/imp_showImpowerView.action?mainBody_id='+g_id+'&mainBody_type=group',600,380,'impower');
		   });
		   
	   }
	   
	   function t_showName(u_id) {
		   $("#deleteId").unbind("click");
		   $("#deleteName").unbind("click");
		   $("#updateId").unbind("click");
		   $("#updateId").click(function(){
			   openWindow('bfgrp/grp_openUpdateGroup.action?uid='+u_id,300,160,'update');
		   });
		   $("#deleteName").click(function(){
			   document.location = 'bfuser/user_deleteName.action?uid='+u_id
		   });
		   $("#ImpowerId").unbind("click");
		   $("#ImpowerId").click(function(){
			   openWindow('bfimpower/imp_showImpowerView.action?mainBody_id='+u_id+'&mainBody_type=user',600,380,'impower');
		   });
		   var url = "bfuser/user.action?uid="+u_id;
		   $.get(url,null,function(data){
			   $("#zh").html($(data).find("user-name").text());
			    $("#sex").html($(data).find("user-sex").text());
			     $("#pwd").html($(data).find("user-password").text());
			      $("#ename").html($(data).find("user-trueName").text());
			       $("#address").html($(data).find("user-address").text());
			        $("#sn").html($(data).find("user-id").text());
			         $("#job").html($(data).find("user-job").text());
			          $("#phone").html($(data).find("user-phone").text());
		   });
	   }
	</script>

  </head>
  
  <body>
    <div align="center">
	<table width="600" height="500" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" align="left" 
				style=" height:60px;line-height:60px;
						background-image:url(web/imgs/accountbar.jpg);
						">
				<div style="width:70px; height:60px; float:left"></div>
				<p style="color:#0066ff; font-size:18px;" class="textShadow">
				 账号管理</p>
			</td>
		</tr>
		<tr>
			<td id="accountInfo" colspan="2" align="left">
			<!-- 账号信息显示 -->
			<div style="width:600px; float:left">&nbsp;员工编号:<label id="sn"></label></div>
			
			<div style="width:140px; float:left">&nbsp;账号:<label id="zh"></label></div>
			<div style="width:140px; float:left">密码:<label id="pwd"></label></div>
			<div style="width:100px; float:left">姓名:<label id="ename"></label></div>
			<div style="width:50px; float:left">性别:<label id="sex"></label></div>
			<div style="width:50px; float:left">年龄:...</div>
			<div style="width:120px; float:left">职位:<label id="job"></label></div>
			
			<div style="width:140px; float:left">&nbsp;联系电话:<label id="phone"></label></div>
			<div style="width:460px; float:left">住址:<label id="address"></label></div>
			</td>
		</tr>
		<tr>
			<td width="400" style="clear:both;width:400px; height:380px">
				<div style="height:380px; width:400px; border:1px solid">
					<!-- iframe -->
					<div class="dtree">
					  <script type="text/javascript">
					     d = new dTree('d');
					     d.add(0,-1,'组');
					     <%
					       List<Group> groups = (List)request.getAttribute("groups");
					       int gid = 0;
					       for(Group group : groups) {
					    	   gid = group.getG_id(); 
					    	   %>
					    	     d.add(<%=gid%>,0,"<%=group.getG_name()%>","javascript:void(t_delete(<%=gid%>))");
					    	   <%
					       }
					       List<User> users = (List)request.getAttribute("users");
					       for(User user : users) {
					    	   %>
					    	      d.add('<%=user.getU_id()%>i',<%=user.getGroup().getG_id()%>,'<%=user.getU_name()%>',"javascript:void(t_showName(<%=user.getU_id()%>))");
					    	   <%
					       }
					     %>
					     document.write(d);
					  </script>
					</div>
				</div>
			</td>
			<td valign="top" width="200" style="vertical-align:top; width:200px">
				<div style="width:200px; height:380px;" align="center">
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')"
						id="ImpowerId" >
						授权
					</div>
					<br />
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')"
						 onclick="openWindow('bfgrp/grp_showAddGrp.action',300,160,'grp')">
						添加用户组
					</div>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" id="deleteId">
						删除用户组
					</div>
					<br />
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')"
						 onclick="openWindow('bfuser/user_openAddAccount.action',400,160,'acc')">
						添加账号
					</div>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')"
						  id="updateId">
						改组
					</div>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" id="deleteName">
						删除账号
					</div>
				</div>
			</td>
		</tr>
	</table>
	</div>
  </body>
</html>
