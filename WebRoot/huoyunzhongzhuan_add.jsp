<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>������ת</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 

 HashMap mssdq = new CommDAO().getmaps("jiashiyuanzhanghao",(String)request.getSession().getAttribute("username"),"cheliangjiashiyuan");
 String jiashiyuanzhanghao="";
  	String jiashiyuanxingming="";
  	String shouji="";
  	String shenfenzheng="";
  	String jiashizhenghao="";
  	
 jiashiyuanzhanghao=(String)mssdq.get("jiashiyuanzhanghao");
  	jiashiyuanxingming=(String)mssdq.get("jiashiyuanxingming");
  	shouji=(String)mssdq.get("shouji");
  	shenfenzheng=(String)mssdq.get("shenfenzheng");
  	jiashizhenghao=(String)mssdq.get("jiashizhenghao");
  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="huoyunzhongzhuan_add.jsp?id=<%=id%>";
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










new CommDAO().insert(request,response,"huoyunzhongzhuan",ext,true,false,""); 

}

%>

  <body >
 <form  action="huoyunzhongzhuan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӻ�����ת:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">��ת��ţ�</td><td><input name='zhongzhuanbianhao' type='text' id='zhongzhuanbianhao' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelzhongzhuanbianhao' /></td></tr>
		<tr><td>;����תվ��</td><td><%=Info.getselect("tujingzhongzhuanzhan","tujingzhongzhuandian","tujingzhongzhuandianmingcheng")%></td></tr>
		<tr><td>����ʱ�䣺</td><td><%=Info.getselect("facheshijian","facheshijianxinxi","facheshijian")%></td></tr>
		<tr><td>���ͣ�</td><td><select name='chexing' id='chexing' class="form-control2" ><option value="С��">С��</option><option value="ԽҰ">ԽҰ</option><option value="���">���</option><option value="��">��</option><option value="�ܳ�">�ܳ�</option></select></td></tr>
		<tr><td  width="200">��ʻԱ�˺ţ�</td><td><input name='jiashiyuanzhanghao' type='text' id='jiashiyuanzhanghao' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.jiashiyuanzhanghao.value='<%=jiashiyuanzhanghao%>';document.form1.jiashiyuanzhanghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">��ʻԱ������</td><td><input name='jiashiyuanxingming' type='text' id='jiashiyuanxingming' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.jiashiyuanxingming.value='<%=jiashiyuanxingming%>';document.form1.jiashiyuanxingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='' class="form-control" style="width:600px;" /></td></tr><script language="javascript">document.form1.shenfenzheng.value='<%=shenfenzheng%>';document.form1.shenfenzheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">��ʻ֤�ţ�</td><td><input name='jiashizhenghao' type='text' id='jiashizhenghao' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.jiashizhenghao.value='<%=jiashizhenghao%>';document.form1.jiashizhenghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>
		
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
 
	var zhongzhuanbianhaoobj = document.getElementById("zhongzhuanbianhao"); if(zhongzhuanbianhaoobj.value==""){document.getElementById("clabelzhongzhuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>��������ת���</font>";return false;}else{document.getElementById("clabelzhongzhuanbianhao").innerHTML="  "; } 
	var zhongzhuanbianhaoobj = document.getElementById("zhongzhuanbianhao");  
if(zhongzhuanbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=huoyunzhongzhuan&col=zhongzhuanbianhao&value="+zhongzhuanbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelzhongzhuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>��ת����Ѵ���</font>";  
return false;
}else{document.getElementById("clabelzhongzhuanbianhao").innerHTML="  ";  
}  
} 
	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
