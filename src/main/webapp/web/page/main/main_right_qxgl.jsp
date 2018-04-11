<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_right_qxgl.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<style type="text/css">
		.iconButton{
			cursor:pointer;
			width:60px;
			height:72px
		}
		.iconImage{
			cursor:pointer;
			width:60px;
			height:60px
		}
	</style>
	<script type="text/javascript" src="web/js/mainjs.js"></script>

  </head>
  
  <body>
    <div style=" width:100%; height:29px;">
		<table cellpadding="0" cellspacing="0">
			<tr height="29">
				<td width="14px" height="29px"><div style="background-image:url(web/imgs/Bitmap_203.bmp); width:14px; height:29px;line-height:29px;"></div></td>
				<td width="60%"><div style="background-image:url(web/imgs/Bitmap_202.bmp); width:100%; height:29px;float:left; line-height:29px">
				<b style="color:#0066ff">业务处理</b></div></td>
				<td width="2px"><div style="background-image:url(web/imgs/Bitmap_201.bmp); width:2px; height:29px"></div></td>
				<td width="40%"><div style="background-image:url(web/imgs/Bitmap_202.bmp); width:100%; height:29px;float:left; line-height:29px">
				<b style="color:#0066ff">&nbsp;&nbsp;业务介绍</b></div></td>
			</tr>
			<tr height="800">
				<td></td>
				<!-- 左边操作部分 -->
				<td style="border-right:1px dashed #aaaaaa">
					<!-- 模块管理 -->
					<div class="iconButton" style="position:absolute;left:80px; top:100px">
					 <div class="iconImage" 
						 style="background-image:url(web/imgs/icos/mkgl.jpg);" 
						 onclick="openWindow('bfmod/mod.action',615,420,'mod')">
					 </div>
					 <div style="text-align:center; line-height:20px" onclick="openWindow('bfmod/mod.action',615,420,'mod')">模块管理</div>
					</div>
					
					<!-- 账号管理 -->
					<div class="iconButton" style="position:absolute;left:280px; top:100px">
					 <div class="iconImage" 
						 style="background-image:url(web/imgs/icos/zhgl.jpg);" 
						 onclick="openModalWindow('../purview/account/account.html',615,550)">
					 </div>
					 <div style="text-align:center; line-height:20px" onclick="openModalWindow('../purview/account/account.html',615,550)">账号管理</div>
					</div>
				</td>
				<td></td>
				<!-- 右边功能介绍部分 -->
				<td>asdfasdf</td>
			</tr>
		</table>

	</div>
  </body>
</html>
