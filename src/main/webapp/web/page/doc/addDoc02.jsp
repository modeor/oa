<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addDoc02.jsp' starting page</title>
    
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
				<p  style="color:#0066ff; font-size:18px" class="textShadow">添加<font color="red">${workFlow.wf_name}</font>流程的公文</p>
			</td>
		</tr>
		<form action="bfdoc/doc_addDoc03.action?workFlowId="+${workFlow.wf_id} method="post" enctype="multipart/form-data" id="f1">
		<tr>
			<td align="right" width="30%">
				公文名称：
			</td>
			<td align="left" width="70%">
				<input type="text" class="textbox" name="doc_title"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				公文描述：
			</td>
			<td align="left">
				<input type="text" class="textbox" name="doc_desc"/>
			</td>
		</tr>
		<tr>
			<td align="right">
				填写公文的模板
			</td>
			<td align="left">
				 <a href="javascript:void(openWindow('bfpurchase/purchase.action',320,160,'openPurchase'))">填写采购模板</a>
			</td>
		</tr>
		<tr>
			<td align="right">
				附件：
			</td>
			<td align="left">

					<div class="uploader_line">
					  <span>
					   <input name="" type="text" id="viewfile" onmouseout="$('#upload').css('display','none');" class="uploader_text" />
					  </span>
					  <label for="unload" onmouseover="$('#upload').css('display','block');" class="uploader_button">浏览...</label>
					  <input name="content" type="file" onchange="$('#viewfile').attr('value',this.value);$(this).css('display','none');" class="uploader" id="upload"
					  name="imageFile" />
					</div>
					
			</td>
		</tr>

		<tr>
			<td align="center" colspan="2">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_test()">
					添加公文
			</div>
			</td>
		</tr>
		</form>
	</table>
	</div>
</body>
</html>
