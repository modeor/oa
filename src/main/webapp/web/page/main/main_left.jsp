<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="web/css/reset.css" />
 <style type="text/css">
 	div.functionButton{
		cursor:pointer;
		width:188px;
		height:44px;
		line-height:44px;
		text-align:center;
		color:#ffffff;
	}
	.textShadow{
		color:#FFFFFF;
		cursor:pointer;
		font-size:18px;
		text-shadow:black 2px 2px 2px;
		-ms-filter: "progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#000000', positive='true')"; /* IE8+ */
		filter: progid:DXImageTransform.Microsoft.DropShadow(offx=1, offy=1, color='#000000', positive='true') /* IE and lower */
	}
 </style>
 
 <script type="text/javascript" src="web/js/jquery-1.4.2.min.js"></script>
  <script type="text/javascript">
  	//改变按钮图片
 	function changePic(obj,picName){
		obj.style.backgroundImage = 'url(' + picName + ')';
	}
	
	//跳转路径
	function gotoLocation(path){
		window.top.rightFrame.document.location=path; 
	}
 </script>

  </head>
  
  <body>
	
<div style="background-image:url(web/imgs/mainFunction_bar.jpg); width:188px; height:30px;"></div>

<div style="background-image:url(web/imgs/main_left_bar2.jpg); width:188px; height:800px;"> 
            <c:forEach items="${modules}" var="flag">
            <c:if test="${empty flag.parent}">    
            <div class="functionButton" 
				style="background-image:url(${flag.m_path_n})"
				onmouseover="changePic(this,'${flag.m_path_c}')"
				onmouseout="changePic(this,'${flag.m_path_n}')"
				onclick="gotoLocation('${flag.m_address}?mid=${flag.m_id}')">
				<p class="textShadow" onclick="gotoLocation('${flag.m_address}?mid=${flag.m_id}')">&nbsp;&nbsp;${flag.m_name}</p>
		</div>
		</c:if>  
		 </c:forEach>   
       
</div>
	
<div style="background-image:url(web/imgs/main_left_bar2.jpg); width:188px; height:380px">

	</div>
  </body>
</html>
