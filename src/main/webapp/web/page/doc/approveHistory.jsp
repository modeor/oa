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
    
    <title>My JSP 'approveHistory.jsp' starting page</title>
    
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
	<table width="300" height="150">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/document/documentbar1.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">审批历史</p>
			</td>
		</tr>
		<c:choose>
		   <c:when test="${empty approveHistory}">
		   <tr>
		    <td class="inputline" align="right" colspan="2">
		                     目前没有人进行审批
		    </td>
		   </tr>
		   </c:when>
		   <c:otherwise>
		     <c:forEach items="${approveHistory}" var="flag">
		      <tr>
			<td class="inputline" align="right" width="25%">
				审批人：
			</td>
			<td class="inputline" align="left" width="75%">
				<input type="text" class="textbox" value="${flag.approver.u_name}"/>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="right">
				审批时间：
			</td> 
			<td class="inputline" align="left">
				<input type="text" class="textbox" value="${flag.approveTime}"/>
			</td>
		</tr>
		<tr>
			<td class="inputline" align="right">
				审批意见：
			</td>
			<td class="inputline" align="left">
				<input type="text" class="textbox" value="${flag.comment}"/>
			</td>
		</tr>
		
		</c:forEach>
		   </c:otherwise>
		</c:choose>
		
		
	</table>
	</div>
</body>
</html>
