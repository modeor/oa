<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.hx.bean.Department"%>
<%@include file="../common/common.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'departmentManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
	<link rel="stylesheet" type="text/css" href="web/css/mainstyle.css" />
	<link rel="stylesheet" type="text/css" href="web/css/dtree.css" />
	<script type="text/javascript" src="web/js/mainjs.js"></script>
	<script type="text/javascript" src="web/js/dtree.js"></script>
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<style type="text/css">
		.tinfo td{height:30px; line-height:30px}
	</style>
	<script type="text/javascript">
	   function showDep(id,name,depSn,parentDep,depDesc) {
		   var parent =  $(window.parent.document);
		   parent.find('#depId').attr('value',id);
		   parent.find('#depName').attr('value',name);
		   parent.find('#depSn').attr('value',depSn);
		   parent.find('#parentDep').attr('value',parentDep);
		   parent.find('#desc').attr('value',depDesc);
	   }
	   
	   function showAddDep() {
		   document.location='bfdep/dep_showAddDep.action';
	   }
	   function deleteDep() {
		    var depId = $("#depId").val();
		    document.location='bfdep/dep_deleteDep.action?depId='+depId;
	   }
	   function findByPage() {
		   $("#f2").submit();
	   }
	</script>
	

  </head>
  
  <body>
    <div align="center">
	<table width="600" height="460" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" align="left" 
				style=" height:60px;line-height:60px;
						background-image:url(web/imgs/accountbar.jpg);
						">
				<div style="width:70px; height:60px; float:left"></div>
				<p style="color:#0066ff; font-size:18px;" class="textShadow">
				 部门管理</p>
			</td>
		</tr>
		<tr>
			<td width="200" style="width:200px; height:300px" valign="top">
				<div style="height:300px; width:200px; border:1px solid">
					<script type="text/javascript">
					    d = new dTree('d');
					    d.add(0,-1,'北风部门');
					    <%
					      List<Department> deps = (List<Department>)request.getAttribute("depAll");
					      int depId = 0;
					      for(Department dep:deps) {
					        if(dep.getParent()==null) {
					        	
					          depId = dep.getDep_id();
					           %>
					           d.add(<%=dep.getDep_id()%>,0,'<%=dep.getDep_name()%>',"javascript:void(showDep('"+<%=dep.getDep_id()%>+"','"+'<%=dep.getDep_name()%>'+"','"+'<%=dep.getDep_sn()%>'+"','"+'无上级部门'+"','"+'<%=dep.getDep_desc()%>'+"'))",'dep');
					           <%
					        }
					        if(dep.getChild().size()!=0) {
					         for(Department depChild:dep.getChild()) {
					        	 if(depChild.getFlag()==1) {
					           %>
					           d.add(<%=depChild.getDep_id()%>,<%=depId%>,'<%=depChild.getDep_name()%>',"javascript:void(showDep('"+<%=depChild.getDep_id()%>+"','"+'<%=depChild.getDep_name()%>'+"','"+'<%=depChild.getDep_sn()%>'+"','"+'<%=depChild.getParent().getDep_name()%>'+"','"+'<%=depChild.getDep_desc()%>'+"'))",'dep');
					           <%
					        	 }
					        	
					         }
					        }
					      }
					    %>
					    document.write(d);
					</script>
				</div>
			</td>
			<td valign="top" width="400" align="center">
				<table width="90%" class="tinfo">
					<tr>
						<td align="right" width="40%">部门名称:</td>
						<td width="60%" align="left"><input type="text" name="dep_name" id="depName"/></td>
					</tr>
					<tr>
						<td align="right">部门ID:</td>
						<td align="left"><input type="text" name="dep_id" id="depId"/></td>
					</tr>
					<tr>
						<td align="right">部门编号:</td>
						<td align="left"><input type="text" name="dep_sn" id="depSn"/></td>
					</tr>
					<tr>
						<td align="right">上级部门:</td>
						<td align="left"><input type="text" name="parentDep" id="parentDep"/></td>
					</tr>
					<tr>
						<td align="right" valign="top" style="vertical-align:top">部门描述:</td>
						<td align="left"><textarea style="width:160px; height:50px" name="dep_desc" id="desc"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:left">
									修改
							</div>
							<c:choose>
							   <%-- <c:when test="${bf:hasOption(person.u_id,'部门管理','a')}"> --%>
							     <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:left" onclick="showAddDep()">
									添加
							    </div>
							   <%--  </c:when> --%>
							    <c:otherwise>
							       <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:left" onclick="javascript:void(alert('你没有该权限'))">
									添加
							      </div>
							    </c:otherwise>
							</c:choose>
							
							<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:left" onclick="deleteDep()">
									删除
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left" style="height:100px">
				<fieldset style="border:1px solid #cccccc; height:100px">
					<legend>查找部门</legend>
					<form action="bfdep/dep_findByPage" method="post" id="f2">
					<table width="98%" class="tinfo">
						<tr>
							<td width="100%" align="center"><input type="radio" />按编号查询&nbsp;&nbsp;<input type="radio" />按名称查询 </td>
						</tr>
						<tr>
							<td align="center">查询条件:<input type="text" name="type"/>
							<c:choose>
							<%--    <c:when test="${bf:hasOption(person.u_id,'部门管理','r')}"> --%>
							     <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:right" onclick="findByPage()">
									查询
							     </div>
							  <%--  </c:when> --%>
							   <c:otherwise>
							   <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" style="float:right" onclick="javascript:void(alert('你没有该权限'))">
									查询
							   </div>
							   </c:otherwise>
							</c:choose>
							
							</td>
						</tr>
					</table>
					</form>
				</fieldset>

			</td>	
		</tr>
	</table>
	</div>
  </body>
</html>
