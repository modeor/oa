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
    
    <title>My JSP 'myDoc.jsp' starting page</title>
    
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
	<link rel="stylesheet" type="text/css" href="web/css/page.css" />
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<script type="text/javascript" src="web/js/mainjs.js"></script>
  </head>
  
  <body onload="init()">
	<div align="center">
	<table width="800" height="390">
		<tr>
			<td height="60" align="left" colspan="3"
				style="background-image:url(web/imgs/document/documentbar2.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">我的公文管理</p>
			</td>
		</tr>
		<tr>
			<td width="800" align="center" height="300px" colspan="3">
			<!-- 分页显示用户数据 -->
			<table width="780" cellpadding="0" cellspacing="0" class="myTable">
				<tr>
					<th width="10%">公文名称</th>
					<th width="25%">公文描述</th>
					<th width="10%">创建时间</th>
					<th width="10%">公文状态</th>
					<th width="10%">流程名称</th>
					<th width="10%">附件</th>
					<th width="10%">审批历史</th>
					<th width="5%">删除操作</th>
					<th width="10%">提交申请</th>
				</tr>
				<c:choose>
				  <c:when test="${empty myDocs}">
				     <td colspan="8">你还没有公文创建</td>
				  </c:when>
				  <c:otherwise>
				  <c:forEach items="${myDocs}" var="flag">
				    <tr>
					<td>${flag.doc_title}</td>
					<td>${flag.doc_desc}</td>
					<td>${flag.createTime}</td>
					<td>${flag.status}</td>
					<td>${flag.workFlow.wf_name}</td>
					<td><a href="bfdoc/doc.action?doc_id=${flag.dom_id}">下载</a></td>
					<td><a href="javascript:void(openWindow('bfdoc/doc_openApprovedHistory.action?doc_id='+${flag.dom_id},300,150,'openHistory'))">查看</a></td>
					<td>删除</td>
					<td>
					<c:choose>
					  <c:when test="${flag.status eq '新建'}">
					  <a href="javascript:void(openWindow('bfdoc/doc_openSubmitDoc.action?doc_id='+${flag.dom_id},320,160,'openSub'))">提交</a>
					  </c:when>
					  <c:otherwise>
					           已提交
					  </c:otherwise>
					</c:choose>
					</td>
				   </tr>
				 </c:forEach>
				  </c:otherwise>
				</c:choose>
				
			</table>
			</td>
		</tr>
		<tr>
			<td height="30px" width="350" style="height:30px;line-height:30px;vertical-align:middle;" align="center" valign="middle">	
				<a href="#">我的公文</a>
				<a href="javascript:void(openWindow('bfdoc/doc_openApproveingDoc.action',800,400,'openApproveing'))">待审公文</a>
				<a href="javascript:void(openWindow('bfdoc/doc_openApprovedDoc.action',800,400,'openApprived'))">已审公文</a>
				<a href="javascript:void(openWindow('bfdoc/doc_addDoc.action',320,160,'add'))">添加公文</a>
			</td>
			<td width="110" style="height:30px;line-height:30px;vertical-align:middle;" align="left">

			</td>
			<td width="360" height="30" align="center" style="vertical-align:middle;line-height:30px">
				<div style="width:340px; height:12px; line-height:12px">
				<ul id="pagination-digg">
					<li class="next"><a href="?page=8">首页&raquo;</a></li>
  					<li class="previous-off">&laquo;上一页</li>
    					<li class="active">1</li>
    					<li><a href="?page=2">2</a></li>
    					<li><a href="?page=3">3</a></li>
    					<li><a href="?page=4">4</a></li>
    					<li><a href="?page=5">5</a></li>
    					<li class="next"><a href="?page=8">下一页&raquo;</a></li>
					<li class="next"><a href="?page=8">尾页&raquo;</a></li>
				</ul>
				</div>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>
