<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showProcessDefined.jsp' starting page</title>
    
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
		//图片缩放
		function DrawImage(ImgD,iwidth,iheight){   
		    //参数(图片,允许的宽度,允许的高度)   
		    var image=new Image();   
		    image.src=ImgD.src;   
		    if(image.width>0 && image.height>0){   
		      if(image.width/image.height>= iwidth/iheight){   
		          if(image.width>iwidth){     
		              ImgD.width=iwidth;   
		              ImgD.height=(image.height*iwidth)/image.width;   
		          }else{   
		              ImgD.width=image.width;     
		              ImgD.height=image.height;   
		          }   
		      }else{   
		          if(image.height>iheight){     
		              ImgD.height=iheight;   
		              ImgD.width=(image.width*iheight)/image.height;           
		          }else{   
		              ImgD.width=image.width;     
		              ImgD.height=image.height;   
		          }
		      }
		    }
		}
	</script>
	<script type="text/javascript">
	  function t_test() {
		  var wf_id = document.getElementById("wf_id").value;
		  var url = "bfwf/wf.action?wf_id="+wf_id;
		  var img_url = "bfwf/wf_showImg?wf_id"+wf_id;
		  $.get(url,null,function(data){
			  $("#pf").val(data);
		  });
		  $("#pm").attr("src",img_url);
	  }
	</script>
  </head>
  
  <body onload="init()">
	<div align="center">
	<table width="800" height="590" class="normalTable">
		<tr>
			<td height="60" align="left" colspan="2"
				style="background-image:url(web/imgs/showProcessBar.jpg);height:60px; line-height:60px">
				<div style="width:70px; height:60px; float:left"></div>
				<p  style="color:#0066ff; font-size:18px" class="textShadow">查看流程定义</p>
			</td>
		</tr>
		<tr>
			<td align="right" width="15%">
				流程名：
			</td>
			<td align="left" width="85%">
				<select class="textbox" id="wf_id" onchange="t_test()">
				    <option value="请选择">--请选择--</option>
					<s:iterator value="#request.wfs">
					   <option value="<s:property value="wf_id"/>"><s:property value="wf_name"/></option>
					</s:iterator>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right" colspan="2">
				<table class="normalTable" height="500" width="100%">
					<tr>
						<td width="45%" height="500">
						<textarea style="width:100%; height:500px" class="textbox" id="pf"></textarea>
						</td>
						<td width="55%" height="500" align="center">
						<div style="width:420px;height:500px;border: 1px solid #cccccc;">
						<img src="" width="420" height="500" border="0" onload="javascript:DrawImage(this,420,500)" id="pm"/>
						</td>
						</div>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>
