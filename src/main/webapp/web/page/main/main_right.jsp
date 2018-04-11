<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<script type="text/javascript" src="web/js/mainjs.js"></script>
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
	
  </head>
  
  <body>
    <div style=" width:100%; height:29px;">
		<table cellpadding="0" cellspacing="0" height="29">
			<tr>
				<td width="14px" height="29px"><div style="background-image:url(web/imgs/Bitmap_203.bmp); width:14px; height:29px;line-height:29px;"></div></td>
				<td width="60%"><div style="background-image:url(web/imgs/Bitmap_202.bmp); width:100%; height:29px;float:left; line-height:29px">
				<b style="color:#0066ff">业务处理</b></div></td>
				<td width="2px"><div style="background-image:url(web/imgs/Bitmap_201.bmp); width:2px; height:29px"></div></td>
				<td width="40%"><div style="background-image:url(web/imgs/Bitmap_202.bmp); width:100%; height:29px;float:left; line-height:29px">
				<b style="color:#0066ff">&nbsp;&nbsp;业务介绍</b></div></td>
			</tr>
			<tr height="800">
			  <td></td>
			  <td  style="border-right:1px dashed #aaaaaa">
			  <c:set var="index" value="-120"></c:set>
			  <c:forEach items="${subMods}" var="flag">
			        <c:set var="index" value="${index+200}"></c:set>
			        <!-- 管理 -->
			        <%-- <c:if test="${bf:hasOption(person.u_id,flag.m_name,'r')}"> --%>
			        <div class="iconButton" style="position:absolute;left:${index}px; top:100px">
			        <div class="iconImage"  style="background-image:url(${flag.m_path_c});" onclick="openWindow('${flag.m_address}',610,560)">
			        </div>
			        <div style="text-align:center" onclick="openWindow('${flag.m_address}',610,560,'${flag.m_name}')">${flag.m_name}</div>
			        </div>
			       <%--  </c:if> --%>
			    </c:forEach>
			  </td>
			</tr>
	</table>
	</div>
  </body>
</html>
