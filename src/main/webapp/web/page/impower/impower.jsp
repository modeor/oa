<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.hx.bean.Module"%>
<%@page import="org.hx.bean.User"%>
<%@page import="org.hx.bean.Group"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'impower.jsp' starting page</title>
    
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
	<script type="text/javascript" src="web/js/dtree.js"></script>
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<link rel="stylesheet" type="text/css" href="web/css/dtree.css" />
	<style type="text/css">
		#buttons li{
			list-style:none;
			float:left;
			width:120px;
			height:35px;
		}
	
	</style>
	<script type="text/javascript">
	   var m_id = 0;
	   function t_showName(m_name,module_id,mainBody_id,mainBody_type) {
		   m_id = module_id;
		   $("#rid").html(m_name);
		   $("#aid").html(m_name);
		   $("#did").html(m_name);
		   $("#uid").html(m_name);
		   $("#eid").html(m_name);
		   //清除掉对应的权限
		   var ck = document.getElementsByName("ck");
		   for(i=0;i<ck.length;i++) {
			   ck[i].checked = false;
		   }
		   var url = 'bfimpower/imp.action?mainBody_id='+mainBody_id+'&mainBody_type='+mainBody_type+'&module_id='+module_id;
		   $.get(url,null,function(data){
			   var saveOption = $(data).find("impower-saveOption").text();
			   var queryOption = $(data).find("impower-queryOption").text();
			   var updateption = $(data).find("impower-updateOption").text();
			   var deleteOption = $(data).find("impower-deleteOption").text();
			   var extOption = $(data).find("impower-extOption").text();
			   
			   if(saveOption==1) {
				   $("#a").attr("checked",true);
			   }
			   if(queryOption==1) {
				   $("#r").attr("checked",true);
			   }
			   if(updateption==1) {
				   $("#u").attr("checked",true);
			   }
			   if(deleteOption==1) {
				   $("#d").attr("checked",true);
			   }
			   if(extOption==1) {
				   $("#e").attr("checked",true);
			   }
		   });   
	   }
	   function t_impower(mainBody_id,mainBody_type) {
		   if(m_id==0) {
			   alert("必须选择需要授权的模块");
		   } else {
			   var str = "";
			   var ss = document.getElementsByName("ck");
			   for(i=0;i<ss.length;i++) {
				   if(ss[i].checked) {
				   str+=ss[i].value+",";
				   }
			   }
		                
			   var url = 'bfimpower/imp_impower.action?mainBody_id='+mainBody_id+'&mainBody_type='+mainBody_type+'&module_id='+m_id+'&str='+str;
			   document.location = url;
		   }
	   }
	   function t_group() {
		   if($("#e").attr("checked")) {
			   $("#r").attr("checked",false);
			   $("#a").attr("checked",false);
			   $("#d").attr("checked",false);
			   $("#u").attr("checked",false);
		   }
	   }
	</script>

  </head>
  
  <body>
    <div align="center">
	<table width="600" height="400">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/authorizebar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">
				 <s:if test="#request.group==null">
				      <font color="red"><s:property value="#request.user.u_name"/></font> 授权
				 </s:if>
				 <s:else>
				      <font color="red"><s:property value="#request.group.g_name"/></font> 授权
				 </s:else>
				 
				</p>
			</td>
		</tr>
		<tr>
			<td height="300" align="left" width="200">
				<div style="border:1px solid; width:200px; height:300px">
				<div class="dtree">
				  <script type="text/javascript">
				    d = new dTree('d');
				    d.add(0,-1,"权限");
				    <%
				      List<Module> modules = (List)request.getAttribute("modules");
				      User user = (User)request.getAttribute("user");
				      Group group = (Group)request.getAttribute("group");
				      int pid = 0;
				      for(Module module : modules) {
				    	  if(module.getParent()==null) {
				    		  pid = module.getM_id();
				    		  if(user==null) {
				    			  %>
	                               d.add(<%=pid%>,0,"<%=module.getM_name()%>","javascript:void(t_showName('<%=module.getM_name()%>',<%=module.getM_id()%>,<%=group.getG_id()%>,'group'))");
	                              <% 
				    		  } else {
				    			  %>
	                               d.add(<%=pid%>,0,"<%=module.getM_name()%>","javascript:void(t_showName('<%=module.getM_name()%>',<%=module.getM_id()%>,<%=user.getU_id()%>,'user'))");
	                              <%
				    		  }
                             
				    	  }
				    	  if(module.getChildren().size()!=0) {
				    		  for(Module moduleChild : module.getChildren()) {
				    			  if(user==null) {
				    				  %>
					    			  d.add(<%=moduleChild.getM_id()%>,<%=pid%>,"<%=moduleChild.getM_name()%>","javascript:void(t_showName('<%=moduleChild.getM_name()%>',<%=moduleChild.getM_id()%>,<%=group.getG_id()%>,'group'))");
					    			  <%
				    			  } else {
				    				  %>
					    			  d.add(<%=moduleChild.getM_id()%>,<%=pid%>,"<%=moduleChild.getM_name()%>","javascript:void(t_showName('<%=moduleChild.getM_name()%>',<%=moduleChild.getM_id()%>,<%=user.getU_id()%>,'user'))");
					    			  <%
				    			  }
				    			  
				    		  }
				    	  }
				      }
				    %>
				    document.write(d);  
				  </script>
				</div>
				</div>
			</td>
			<td align="left" width="400">
				<div style="border:1px solid; width:400px; height:300px">
				<!-- 详细权限 -->
				<table class="myTable" width="100%">
				   <tr>
				     <th width="70%">权限功能说明</th>
				     <th width="30%">是否授权</th>
				   </tr>
				   <tr>
				     <td><label id="rid">****</label>查看</td>
				     <td><input type="checkbox" name="ck" value="r" id="r"></td>
				   </tr>
				   <tr>
				     <td><label id="aid">****</label>添加</td>
				     <td><input type="checkbox" name="ck" value="a" id="a"></td>
				   </tr>
				   <tr>
				     <td><label id="did">****</label>删除</td>
				     <td><input type="checkbox" name="ck" value="d" id="d"></td>
				   </tr>
				   <tr>
				     <td><label id="uid">****</label>修改</td>
				     <td><input type="checkbox" name="ck" value="u" id="u"></td>
				   </tr>
				   
				   <s:if test="#request.group==null">
				   <tr>
				     <td><label id="eid">****</label>组优先</td>
				     <td><input type="checkbox" name="ck" value="e" id="e" onclick="t_group()"></td>
				   </tr>
				   </s:if>
				   
				</table>
				</div>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
			<ul id="buttons">
				<li>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')">
					授予所有权限
					</div>
				</li>
				<li>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')">
					取消所有权限
					</div>
				</li>
				<li></li>
				<li>
					<div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')">
					全选
					</div>
				</li>
				<li>
				  <s:if test="#request.group==null">
				    <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_impower(<s:property value="#request.user.u_id"/>,'user')">
					授权用户
					</div>
				  </s:if>
				  <s:else>
				  <div class="button" onmouseover="buttonHover(this,'web/')" onmouseout="buttonNormal(this,'web/')" onclick="t_impower(<s:property value="#request.group.g_id"/>,'group')">
					授权组
					</div>
				  </s:else>
				  
				</li>
			</ul>
 
			</td>
		</tr>
	</table>
	</div>

  </body>
</html>
