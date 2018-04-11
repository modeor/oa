<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'findEmp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	</script>

  </head>
  
  <body>
    <center>

<div id="emplist">
<form action="" method="post">
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
	 <tr><td colspan="8" align="right"><input type="checkbox" class="style_box"/>全选/取消&nbsp;&nbsp;<input type="submit" value="删除信息"   onmouseover="buttonHover(this)" onmouseout="buttonNormal(this)" class="button" style="border:0px solid #fff;"  onclick="alert('删除成功');return false;" />&nbsp;</td></tr>
</table>
</form>
	<center>
	  <pg:pager items="${pv.totalNo}"  maxPageItems="2" maxIndexPages="2" url="bfemp/emp_findEmp.action">
	     <s:if test="#request.job!=null">
              <pg:param name="job01" value="${job}"/>
         </s:if>
          <s:if test="#request.name!=null">
              <pg:param name="name01" value="${name}"/>
         </s:if>
          <s:if test="#request.dep!=null">
              <pg:param name="dep" value="${dep}"/>
         </s:if>
          <s:if test="#request.address!=null">
              <pg:param name="address01" value="${address}"/>
         </s:if>
         
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
  </body>
</html>
