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
    
    <title>My JSP 'addDoc01.jsp' starting page</title>
    
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

  </head>
  
  <body>
    <div align="center">
	<table width="300" height="120">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/document/documentbar1.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">选择公文</p>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="center">
				请选择要添加以下流程的公文
			</td>
		</tr>
		<tr>
			<td class="inputline" align="center">
				<s:iterator value="#request.wfs">
				  <a href="javascript:void(openWindow('bfdoc/doc_addDoc02.action?workFlowId='+<s:property value="wf_id"/>,320,210,'adddoc02'))"><s:property value="wf_name"/></a>
				</s:iterator>
			</td>
		</tr>
	</table>
	</div>
  </body>
</html>
