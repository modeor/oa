<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <frameset rows="80px,*" border="0" >
	<frame src="web/page/main/main_top.jsp" scrolling="no" noresize="noresize"/>
	<frameset cols="188px,*" border="0">
	  <frame src="bfimpower/imp_getUsetModules.action" scrolling="no" noresize="noresize">
	  <frame src="web/page/main/main_right.jsp" name="rightFrame" scrolling="no" noresize="noresize">
	  <noframes>
	  	<body>
			<p>您的浏览器不支持框架，请升级您的浏览器以便正常访问</p>
		</body>
	  </noframes>
	</frameset>
<frame src="UntitledFrame-2"></frameset>
</html>
