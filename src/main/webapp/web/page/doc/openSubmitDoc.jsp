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
    
    <title>My JSP 'openSubmitDoc.jsp' starting page</title>
    
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
	  function t_test() {
		  document.getElementById("f1").submit();
	  }
	</script>
  </head>
  
  <body>
	<div align="center">
	<table width="300" height="150">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/document/documentbar1.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">提交</p>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="center">
				请选择一个步骤进行提交
			</td>
		</tr>
		<form action="bfdoc/doc_submitDoc.action?doc_id="+${doc_id} method="post" id="f1">
		<tr>
		    <c:forEach items="${transitions}" var="flag">
			<td class="inputline" align="center">
				<input type="radio" name="transitionName" value="${flag}"/>${flag}
			</td>
			</c:forEach>
		</tr>
		<tr>
			<td class="inputline" align="center">
			<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_test()">
					提交
			</div>
			</td>
		</tr>
		</form>
	</table>
	</div>
</body>
</html>
