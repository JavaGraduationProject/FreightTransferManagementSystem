<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ͨ�û�</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>������ͨ�û��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �û�����<input name="yonghuming" type="text" id="yonghuming" class="form-control2"  />  �û�������<input name="yonghuxingming" type="text" id="yonghuxingming" class="form-control2"  />  ���֤��<input name="shenfenzheng" type="text" id="shenfenzheng" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='putongyonghu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>�û���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�û�����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>�ֻ�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc' width='90' align='center'>��Ƭ</td>        
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"putongyonghu"); 
    String url = "putongyonghu_list.jsp?1=1"; 
    String sql =  "select * from putongyonghu where 1=1";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}if(request.getParameter("yonghuxingming")=="" ||request.getParameter("yonghuxingming")==null ){}else{sql=sql+" and yonghuxingming like '%"+request.getParameter("yonghuxingming")+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("yonghuxingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("youxiang") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="putongyonghu_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

