<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=cheliangjiashiyuan.xls");
%>
<html>
  <head>
    <title>������ʻԱ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���г�����ʻԱ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��ʻԱ�˺�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>��ʻԱ����</td>    <td bgcolor='#cccccc' width='40' align='center'>�Ա�</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�ֻ�</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>��ʻ֤��</td>        
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "cheliangjiashiyuan_list.jsp?1=1"; 
    String sql =  "select * from cheliangjiashiyuan where 1=1";
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
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

