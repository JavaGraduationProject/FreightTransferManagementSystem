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
  </head>


  <body >
  <p>���г�����ʻԱ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ʻԱ�˺ţ�<input name="jiashiyuanzhanghao" type="text" id="jiashiyuanzhanghao" class="form-control2"  />  ��ʻԱ������<input name="jiashiyuanxingming" type="text" id="jiashiyuanxingming" class="form-control2"  /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='cheliangjiashiyuan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��ʻԱ�˺�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>��ʻԱ����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�ֻ�</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>��ʻ֤��</td>        
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"cheliangjiashiyuan"); 
    String url = "cheliangjiashiyuan_list.jsp?1=1"; 
    String sql =  "select * from cheliangjiashiyuan where 1=1";
	if(request.getParameter("jiashiyuanzhanghao")=="" ||request.getParameter("jiashiyuanzhanghao")==null ){}else{sql=sql+" and jiashiyuanzhanghao like '%"+request.getParameter("jiashiyuanzhanghao")+"%'";}if(request.getParameter("jiashiyuanxingming")=="" ||request.getParameter("jiashiyuanxingming")==null ){}else{sql=sql+" and jiashiyuanxingming like '%"+request.getParameter("jiashiyuanxingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jiashiyuanzhanghao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("jiashiyuanxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("jialing") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("jiashizhenghao") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="cheliangjiashiyuan_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

