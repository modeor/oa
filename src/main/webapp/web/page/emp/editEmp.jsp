<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EditEmp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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

		#addemp,#emplist{margin-left:auto; margin-right:auto; width:550px;}
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
    <div id="addemp">
	<center>
<fieldset>
<legend>编辑员工信息</legend>
		<form method="POST" action="" id="form1" name="form1">

		    <ul>
				<li><label>账&nbsp;&nbsp;号：</label><input type="text" name="loginName" value="" readonly="readonly" disabled="disabled" class="input_r"></li>
				<li lass="left"><label>密&nbsp;&nbsp;码：</label><input type="text" name="loginPwd" value="" readonly="readonly" disabled="disabled" class="input_r"></li>
				<li><label>员工编号：</label><input type="text" name="empNo" value=""></li>
				<li><label>员工姓名：</label><input type="text" name="empName" value=""></li>
				<li><label>所属部门：</label><input type="text" name="deptName" value=""></li>
				<li><label>性  别：</label><input type="text" name="sex" value=""></li>
				<li><label>所任职务：</label><input type="text" name="job" value=""></li>
				<li><label>联系电话：</label><input type="text" name="phone" value=""></li>
				<li><label>现所在住址：</label><input type="text" name="address" value="" maxlength="120" style="width:400px;"></li>
				<li style="width:100%;text-align:center;"><input type="submit" name="cmdSave" value="修 改"  onmouseover="buttonHover(this)" onmouseout="buttonNormal(this)" class="button" style="border:0px solid #fff;" onclick="alert('修改成功');return false;"></li>
			</ul>

				</form>
				</fieldset>
				</center>
	</div>
  </body>
</html>
