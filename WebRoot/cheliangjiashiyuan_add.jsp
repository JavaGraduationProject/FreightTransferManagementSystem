<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������ʻԱ</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="cheliangjiashiyuan_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){










new CommDAO().insert(request,response,"cheliangjiashiyuan",ext,true,false,""); 

}

%>

  <body >
 <form  action="cheliangjiashiyuan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӳ�����ʻԱ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">��ʻԱ�˺ţ�</td><td><input name='jiashiyuanzhanghao' type='text' id='jiashiyuanzhanghao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabeljiashiyuanzhanghao' /></td></tr>		<tr><td  width="200">���룺</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelmima' /></td></tr>		<tr><td  width="200">��ʻԱ������</td><td><input name='jiashiyuanxingming' type='text' id='jiashiyuanxingming' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabeljiashiyuanxingming' /></td></tr>		<tr><td>�Ա�</td><td><select name='xingbie' id='xingbie' class="form-control2"><option value="��">��</option><option value="Ů">Ů</option></select></td></tr>		<tr><td  width="200">���䣺</td><td><input name='jialing' type='text' id='jialing' value='' onblur='checkform()' class="form-control" />&nbsp;<label id='clabeljialing' />����������</td></tr>		<tr><td  width="200">�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="form-control" style="width:600px;" />&nbsp;<label id='clabelshenfenzheng' />�������֤��ʽ</td></tr>		<tr><td  width="200">��ʻ֤�ţ�</td><td><input name='jiashizhenghao' type='text' id='jiashizhenghao' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jiashiyuanzhanghaoobj = document.getElementById("jiashiyuanzhanghao"); if(jiashiyuanzhanghaoobj.value==""){document.getElementById("clabeljiashiyuanzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>�������ʻԱ�˺�</font>";return false;}else{document.getElementById("clabeljiashiyuanzhanghao").innerHTML="  "; } 	var jiashiyuanzhanghaoobj = document.getElementById("jiashiyuanzhanghao");  
if(jiashiyuanzhanghaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=cheliangjiashiyuan&col=jiashiyuanzhanghao&value="+jiashiyuanzhanghaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeljiashiyuanzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>��ʻԱ�˺��Ѵ���</font>";  
return false;
}else{document.getElementById("clabeljiashiyuanzhanghao").innerHTML="  ";  
}  
} 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	var jiashiyuanxingmingobj = document.getElementById("jiashiyuanxingming"); if(jiashiyuanxingmingobj.value==""){document.getElementById("clabeljiashiyuanxingming").innerHTML="&nbsp;&nbsp;<font color=red>�������ʻԱ����</font>";return false;}else{document.getElementById("clabeljiashiyuanxingming").innerHTML="  "; } 	var jialingobj = document.getElementById("jialing"); if(jialingobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jialingobj.value)){document.getElementById("clabeljialing").innerHTML=""; }else{document.getElementById("clabeljialing").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}      var shenfenzhengobj = document.getElementById("shenfenzheng"); if(shenfenzhengobj.value!=""){ if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value)){document.getElementById("clabelshenfenzheng").innerHTML=""; }else{document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>�������֤��ʽ</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
