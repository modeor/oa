<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>采购单</title>
    
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
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
    <script type="text/javascript">
       function t_test() {
    	   document.getElementById("f1").submit();
       }
    </script>
  </head>
  
  <body onload="init()">
	<div align="center">
	<table width="320" height="210" class="normalTable">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/document/adddocumentbar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">添加采购流程的公文</p>
			</td>
		</tr>
		<form action="bfpurchase/purchase_addPurchase.action" method="post" id="f1">
		<tr>
			<td align="right" width="30%">
				采购内容：
			</td>
			<td align="left" width="70%">
				<input type="text" class="textbox" name="purchase.purchase_content"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				采购金额：
			</td>
			<td align="left">
				<input type="text" class="textbox" name="purchase.purchase_prize"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				填写采购人
			</td>
			<td align="left">
				<input type="text" class="textbox" name="purchase.purchase_name"/>	
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_test()">
				添加采购信息
			</div>
			</td>
		</tr>
		</form>
	</table>
	</div>
</body>
</html>
