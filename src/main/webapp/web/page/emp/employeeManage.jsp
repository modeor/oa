<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'employeeManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="web/js/jquery-1.4.2.js"></script>
	<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
    <%@taglib uri="/struts-tags" prefix="s"%>
	<script type="text/javascript">
	   function t_test() {
		   var pid = $('#s1').val();
		   var url = "bfdep/dep.action?pid="+pid;
		   
		   $.get(url,null,function(data){
			   var dom = data.getElementsByTagName("subDep");
			   var s2 = document.getElementById("s2");
			   t_clear();
			   for(i=0;i<dom.length;i++) {
				   var dep_name = (dom[i].getElementsByTagName("subDep-name")[0]).firstChild.data;
				   var dep_id = (dom[i].getElementsByTagName("subDep-id")[0]).firstChild.data;
				   s2[i] = new Option(dep_name,dep_id);
			   }
		   });
	   }
	   function t_clear() {
		   var s2 = document.getElementById("s2");
		   var sLength = s2.length;
		   for(i=0;i<sLength;i++) {
			   s2.options[i] = null;
		   }
	   }
	  
	</script>
	
	
	
	
	
	
	<style type="text/css">
			body{background-color:#FFFFFF;}
			.button{
			cursor:pointer;
			background-image:url(web/imgs/button_normal.jpg);
			width:102px;
			height:35px; 
			border:0px solid #fff;
			line-height:35px
		}
		a{ font-size:12px; text-decoration:none;COLOR: #3443ad;}
		a:hover{font-size:12px; text-decoration:underline;COLOR: #3443ad;}
			.item
			{
					COLOR: #3443ad;
					FONT-FAMILY: 宋体;
					FONT-SIZE: 12px;
			}
			.th_1{ font-weight: bold;}
		#addemp,#emplist{margin-left:auto; margin-right:auto; width:550px;}
		fieldset{width:99%;}
		#emplist  td{font-size:12px;COLOR: #3443ad;}
		#emplist  table,#deptlist  td{border:#ccc 1px solid;border-collapse: collapse; }   
		#emplist  input{border:#333333 1px solid;}
		#emplist  .style_box{border-width: 0px; height:18px;}
		
		#addemp UL {
				CLEAR:left;
				BORDER:0px;PADDING: 0px;
				DISPLAY: inline;
				MARGIN: 0px;
				LIST-STYLE-TYPE: none;
				TEXT-ALIGN: left;
			}
		#addemp UL li{ list-style:none;TEXT-ALIGN: left; float:left; margin-left:0px;margin-top:5px;}
		#addemp label{float:left;display: block;width:80px; margin:0px; text-align: right;border:#333 0px solid;font-size:12px;COLOR: #3443ad;}
		#addemp input{border:#A4B97F 1px solid; margin:0px;}
		#addemp .style_box{border-width: 0px; height:18px;}
		#addemp .input_r{background-color: #f1f1f1;}
		#addemp span{font-size:12px;COLOR: #3443ad;}
		legend{ font-size:12px;}
		select{width: 150px;}
		form{ display:inline ; padding:0px ; margin:0px;}
		.button{
			cursor:pointer;
			background-image:url(web/imgs/button_normal.jpg);
			width:102px;
			height:35px; 
			border:0px solid #fff;
			line-height:35px
		}
			</style>
			<script type="text/javascript">
		function buttonNormal(obj){
			obj.style.backgroundImage= "url('web/imgs/button_normal.jpg')";
		}
		
		function buttonHover(obj){
			obj.style.backgroundImage="url('web/imgs/button_hover.jpg')";
		}
		function m_test() {
			var cc = document.getElementsByName("cc");
			var ccall = document.getElementById("ccall");
			if(ccall.checked) {
				for(i=0;i<cc.length;i++) {
					cc[i].checked = true;
				}
			} else {
				for(i=0;i<cc.length;i++) {
					cc[i].checked = false;
				}
			}
		}
	</script>

  </head>
  
  <body>
<center>

<div id="emplist">
<form action="bfemp/emp_deleteEmp.action" method="post">
  <table width="550" height="30" border="1" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td align="center"  width="40" height="25" class="th_1">序号</td>      
    <td align="center"  width="80" height="25" class="th_1">员工编号</td>
    <td align="center"  width="80" height="25" class="th_1">员工姓名</td>
    <td align="center"  width="40" height="25" class="th_1">性 别</td>
	<td align="center"  width="80" height="25" class="th_1">所属部门</td>
	<td align="center"  width="*" height="25" class="th_1">所任职务</td>
	<td align="center"  width="40" height="25" class="th_1">选择</td>
	<td align="center"  width="50" height="25" class="th_1">操作</td>

  </tr>
  <s:iterator value="#request.pv.pageList">
  	 <tr>
	    <td align="center" height="25"><s:property value="emp_id"/></td>
	    <td><s:property value="emp_sn"/></td>
	    <td><s:property value="emp_name"/></td>
	    <td><s:property value="emp_sex"/></td>
		<td><s:property value=""/></td>
		<td><s:property value="emp_job"/></td>
		<td><input type="checkbox" class="style_box" name="cc" value='<s:property value="emp_id"/>'></td>
		<td><a href="bfemp/emp_showEmp.action">详细</a></td>
     </tr>
  </s:iterator> 
	 <tr><td colspan="8" align="right"><input type="checkbox" class="style_box" id="ccall" onclick="m_test()"/>全选/取消&nbsp;&nbsp;<input type="submit" value="删除信息"   onmouseover="buttonHover(this)" onmouseout="buttonNormal(this)" class="button" style="border:0px solid #fff;"  onclick="" />&nbsp;</td></tr>
</table>
</form>
	<center>
		 
         <pg:pager items="${pv.totalNo}"  maxPageItems="2" maxIndexPages="2" url="bfemp/emp.action">
         <pg:first>
            <a href="${pageUrl}">首页</a>
         </pg:first>
         <pg:prev>
            <a href="${pageUrl}">前页</a>
         </pg:prev>
         <pg:pages>
          <a href="${pageUrl}" class="item">${pageNumber}</a>
         </pg:pages>
         
         <pg:next>
            <a href="${pageUrl}">后页</a>
         </pg:next>
         <pg:last>
            <a href="${pageUrl}">尾页</a>
         </pg:last>
      </pg:pager>
         
      
		</center>
	</div>
	<Br /><br />
	<div id="addemp">
	<center>
<fieldset>
<legend>添加员工信息</legend>
		<form method="POST" action="bfemp/emp_addEmp.action" id="form1" name="form1" enctype="multipart/form-data">

		    <ul>
				<li><label>账&nbsp;&nbsp;号：</label><input type="text" name="loginName" value="" readonly="readonly" disabled="disabled" class="input_r"></li>
				<li lass="left"><label>密&nbsp;&nbsp;码：</label><input type="text" name="loginPwd" value="" readonly="readonly" disabled="disabled" class="input_r"></li>
				<li><label>员工编号：</label><input type="text" name="emp.emp_sn" value=""></li>
				<li><label>员工姓名：</label><input type="text" name="emp.emp_name" value=""></li>
				<li><label>所属部门：</label>
				    <select name="parentDep" id="s1" onchange="t_test()">
				     <option value="请选择">--请选择--</option>
				     <s:iterator value="#request.deps">
				     <option value='<s:property value="dep_id"/>'><s:property value="dep_name"/></option>
				     </s:iterator>
				    </select>
				</li>
				<li><label>子部门：</label>
				 <select name="depId" id="s2">
				 <option value="请选择">--请选择--</option>
				    </select>
				</li>
				<li><label>所任职务：</label><input type="text" name="emp.emp_job" value=""></li>
				<li><label>联系电话：</label><input type="text" name="emp.emp_phone" value=""></li>
				<li><label>现所在住址：</label><input type="text" name="emp.emp_address" value=""></li>
				 <li><label>性  别：</label><input type="text" name="emp.emp_sex"></li>
				 <li><label>员工的照片：</label><input type="file" name="image"></li>
				<li style="width:100%;text-align:center;"><input type="submit" name="cmdSave" value="添 加"  onmouseover="buttonHover(this)" onmouseout="buttonNormal(this)" class="button" style="border:0px solid #fff;"></li>
			</ul>

				</form>
				</fieldset>
				<br />
<fieldset>
<legend>查找员工</legend>
<form method="POST" action="bfemp/emp_findEmp.action" id="form1" name="form1">
<ul>
  <li><label>职位:</label><input type="text" name="job"/></li>
  <li><label>姓名:</label><input type="text" name="name"/></li>
  <li><label>部门:</label> <select name="dep" id="s1">
				     <option value="请选择">--请选择--</option>
				     <s:iterator value="#request.subDeps">
				     <option value='<s:property value="dep_id"/>'><s:property value="dep_name"/></option>
				     </s:iterator>
				    </select></li>
  <li><label>住址:</label><input type="text" name="address"/></li>
</ul>

<div style=" margin-left:70px;text-align:left"><input type="submit" value="提交查询" class="button" style="border:0px solid #fff;"   onmouseover="buttonHover(this)" onmouseout="buttonNormal(this)"/><div>
</form>
</fieldset>
				</center>
	</div>
	</body>
</html>
