<%@ page language="java"  pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ϵͳ��̨����</title>
<link rel="stylesheet" href="images/css/bootstrap.css" />
<link rel="stylesheet" href="images/css/css.css" />
<script type="text/javascript" src="images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="images/js/bootstrap.min.js"></script>
<script type="text/javascript" src="images/js/sdmenu.js"></script>
<script type="text/javascript" src="images/js/laydate/laydate.js"></script>
</head>
<body>
<div class="header">
	 <div class="logo"><div style="font-family:����; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:15pt">
            <div align="center">������ת����ϵͳ</div>
        </div></div>
     
				<div class="header-right">
                <i class="icon-question-sign icon-white"></i> <a onclick="alert('���Լ�д����ף��̨�ʰ�');" style="cursor:pointer">����</a> <i class="icon-off icon-white"></i> <a href="logout.jsp" target="_parent">ע��</a> <i class="icon-user icon-white"></i> <a href="#"><%=request.getSession().getAttribute("username")%>[<%=request.getSession().getAttribute("cx")%>]</a> <i class="icon-envelope icon-white"></i> <a href="mailto:429489354@qq.com">˽������</a>
                <div id="modal-container-973558" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:300px; margin-left:-150px; top:30%">
				
			</div>
				</div>
</div>
<div id="middle">
     <div class="left">
     
     <script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">
	                		<%
if (request.getSession().getAttribute("cx").equals("������ʻԱ")){%><%@ include file="left_cheliangjiashiyuan.jsp"%><%}if (request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա")){%><%@ include file="left_guanliyuan.jsp"%><%}if (request.getSession().getAttribute("cx").equals("��ͨ�û�")){%><%@ include file="left_putongyonghu.jsp"%><%}
%>
    
</div>

     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script>

     <div class="right"  id="mainFrame" style="overflow:hidden">
     
     
 	<div style="height:100%" id="page_show">
 		<iframe width="99%" name="hsgmain" id="hsgmain" src="sy.jsp" height="96%" style=" margin-top:10px"></iframe>  
    </div>
     </div>
    </div>
 <script>
!function(){
laydate.skin('molv');
laydate({elem: '#Calendar'});
}();
</script>
</body>
</html>
