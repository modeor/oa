<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
 <script type="text/javascript" src="web/js/jquery-1.4.2.min.js"></script>
 <style type="text/css">
	a{text-decoration:none;
		color:#FFFFFF}
		
	ul li{
		width:150px;
		list-style:none;
		float:left
	}
 </style>
 <script type="text/javascript">
 	function showTime(){
		var d= new Date();
		var nowtime = '当前时间:'
					+ formatStr(d.getHours()) + ':' 
					+ formatStr(d.getMinutes()) + ':'
					+ formatStr(d.getSeconds());
		$('#timelabel').html(nowtime);
		setTimeout(showTime,1000);
	}
	
	function formatStr(number){
		if(('' + number).length==2)
			return number;
		else
			return '0' + number;
	}
 </script>

  </head>
  
 <body onload="setTimeout(showTime,1000)">
	<div style="background-image:url(web/imgs/main_top_bar.jpg); height:80px; width:100%" >
		<div style="background-image:url(web/imgs/logo.jpg); width:100%; height:80px; background-repeat:no-repeat">
		<table width="230" height="80px" cellpadding="0" cellspacing="0" style="float:right;">
			<tr>
				<td height="50" width="120"></td>
				<td width="110"></td>
			</tr>
			<tr>
				<td height="30" style="height:30px; line-height:30px">
				<span id="timelabel" style="color:#FFFFFF">当前时间:00:00:00</span>
				</td>
				<td style="height:30px; line-height:30px"><a href="#">重新登录</a>&nbsp;&nbsp;<a href="#">退出系统</a></td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>
