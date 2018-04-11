// JavaScript Document
//启动需要加载的内容
function init(){
	drawTableColor();
	newButton();
}

//设置表格效果
function drawTableColor(){
	//获得表格的所有行
	var allRows = $('.myTable tr');

	//循环所有行
	for(i=0;i<allRows.length;i++){
		//循环所有列
		var tds = $(allRows).eq(i).children();
		if(tds.length>1){
			for(j=0;j<tds.length;j++){
			
				//隔行变色
				if(i%2==0 && tds.eq(j).attr("tagName")=="TD"){
					tds.eq(j).css('backgroundColor','#E3E3E3');
				}
				
				if(tds.eq(j).attr("tagName")=="TD"){
					//增加悬停提示
					tds.eq(j).attr("title",tds.eq(j).text());
				
					var bak_color;
					//悬停变色
					tds.eq(j).hover(
					function(){
						//鼠标悬停的事件
						bak_color = $(this).css('backgroundColor');
						$(this).css('backgroundColor','#cccccc');
					},
					function(){
						//鼠标移出的事件
						$(this).css('backgroundColor',bak_color);
					});
				}else if(tds.eq(j).attr("tagName")=="TH"){
					//悬停变色
					tds.eq(j).hover(
					function(){
						//鼠标悬停的事件
						$(this).css('backgroundImage','url("web/imgs/table/cell01.jpg")');
						$(this).css('color','#466bae');
						
					},
					function(){
						//鼠标移出的事件
						$(this).css('backgroundImage','url("web/imgs/table/cell02.jpg")');
						$(this).css('color','#FFFFFF');
					});
				}
				
				if(tds.eq(j).attr("tagName")=="TD"){
				//绑定事件
				tds.eq(j).bind('click',function(){

					//如果还没有加入input元素就加入
					if($(this).find('input').length==0 && $(this).find('a').length==0){
						var mwidth = $(this).width();
						var mheight = $(this).height();
					
						var textValue = $(this).text();


						var inputBoxStr = "<input type='text' value='" + 
							textValue
							 + "'" + " onblur='$(this).parent().html(\"" + textValue + "\");' style='width:" 
							 + mwidth + "px;height:" + mheight + "px;border:1px solid #cccccc;line-height:" 
							 + mheight + "px'/>";
	
						//变成文本框	
						$(this).html(inputBoxStr);

						//设置焦点
						$(this).children('input').focus();
					}
				});
				}
			}
		}
	}
}

//打开模式窗口
function openModalWindow(path,width,height){
	if(getBrowser()=='IE:6.0'){
		height+=20;
	}
	
	var s = window.showModalDialog(path,null,'dialogHeight=' + height + 'px;dialogWidth=' + width + 'px;status:no;scroll:no;help:No;center:yes');
	s.moveTo((screen.width-width)/2,(screen.height-height)/2);
	return s;
}
//打开普通窗体
function openWindow(path,width,height,title){
	if(getBrowser().substring(0,2)=='IE'){
		height+=20;
		width+=20;
	}
	
	var x = (screen.width-width)/2;
	var y = (screen.height-height)/2;
	
	var s = window.open (path, title, "height="+height+", width="+width+
			",left=" + x + ",top=" + y + ",toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no"); 
	//s.moveTo((screen.width-width)/2,(screen.height-height)/2);
	return s;
}

//打开普通窗体(重载)
function openWindow2(path,width,height){
	return openWindow(path,width,height,"title");
}

//按钮
function buttonNormal(obj,basePath){
	obj.style.backgroundImage= "url('" + basePath + "imgs/button_normal.jpg')";
}
function buttonHover(obj,basePath){
	obj.style.backgroundImage="url('" + basePath + "imgs/button_hover.jpg')";
}

function newButton(){
	//添加悬停事件
	$(".newButton").hover(function(){
		buttonHover(this,'web/');
	},
	function(){
		buttonNormal(this,'web/');
	});
	
	$(".newButton").css('verticalAlign','middle');

	//判断浏览器,修正IE6双倍MARGIN的BUG
	var margin1 = 12;
	var margin2 = 6;
	if(getBrowser()=='IE:6.0'){
		margin1 = margin1 / 2;
		margin2 = margin2 / 2;
	}
	
	$(".newButton").each(function(i){
		//先得到按钮上的文字
		var commandStr = $(this).text();
		
		//添加按钮小图标
		if($(this).attr('src')!=undefined && $(this).attr('src')!=''){
			$(this).html("<div style=\"height:16px;line-height:16px;vertical-align:middle;margin-top:8px;float:left;margin-left:" 
				+ margin1 + "px\"><img src='" 
				+ $(this).attr('src') + "'/>" 
				+ "</div><span style=\"height:12px;vertical-align:middle;float:left;margin-left:" + margin2 + "px\">"
				+ commandStr
				+ "</span>");
		}

	});
}

//获得浏览器类型
function getBrowser(){
     var Sys = {};  
     var ua = navigator.userAgent.toLowerCase();  
     window.ActiveXObject ? Sys.ie = ua.match(/msie ([\d.]+)/)[1] :  
     document.getBoxObjectFor ? Sys.firefox = ua.match(/firefox\/([\d.]+)/)[1] :  
     window.MessageEvent && !document.getBoxObjectFor ? Sys.chrome = ua.match(/chrome\/([\d.]+)/)[1] :  
     window.opera ? Sys.opera = ua.match(/opera.([\d.]+)/)[1] :  
     window.openDatabase ? Sys.safari = ua.match(/version\/([\d.]+)/)[1] : 0;  
       
     //返回版本号等
     if(Sys.ie) return('IE:'+Sys.ie);  
     if(Sys.firefox) return('Firefox:'+Sys.firefox);  
     if(Sys.chrome) return('Chrome:'+Sys.chrome);  
     if(Sys.opera) return('Opera:'+Sys.opera);  
     if(Sys.safari) return('Safari:'+Sys.safari);  
}