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
    
    <title>My JSP 'findByPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
			body{background-color:#FFFFFF;}
			.button{
			cursor:pointer;
			background-image:url(../../imgs/button_normal.jpg);
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
		#adddept,#deptlist{margin-left:auto; margin-right:auto; width:550px;}
		#deptlist  td{font-size:12px;COLOR: #3443ad;}
		#deptlist  table,#deptlist  td{border:#ccc 1px solid;border-collapse: collapse; }   
		#deptlist  input{border:#333333 1px solid;}
		#deptlist  .style_box{border-width: 0px; height:18px;}
		legend{ font-size:12px;}
		form{ display:inline ; padding:0px ; margin:0px;}
			</style>

  </head>
  
  <body>
   <center>

<div id="deptlist">
  <table width="550" height="30" border="1" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td align="center"  width="50" height="25" class="th_1">序号</td>
    <td align="center"  width="80" height="25" class="th_1">部门编号</td>
    <td align="center"  width="80" height="25" class="th_1">部门名称</td>
    <td align="center"  width="80" height="25" class="th_1">上级部门</td>
	<td align="center"  width="*" height="25" class="th_1">部门描述</td>

  </tr>
     <s:iterator value="#request.pv.pageList">
  	 <tr>
	    <td align="center" height="25"><s:property value="dep_id"/></td>
	    <td><s:property value="dep_sn"/></td>
	    <td><a href="#"><s:property value="dep_name"/></a></td>
	    <td>null</td>
		<td><s:property value="dep_sn"/></td>
     </tr>
 </s:iterator>
</table>

	   <center>
         <pg:pager items="${pv.totalNo}"  maxPageItems="5" maxIndexPages="5" url="bf/dep_findByPage.action">
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
  </body>
</html>
