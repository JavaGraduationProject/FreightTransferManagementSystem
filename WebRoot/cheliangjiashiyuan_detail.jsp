<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������ʻԱ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"cheliangjiashiyuan");
     %>
  ������ʻԱ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>��ʻԱ�˺ţ�</td><td width='39%'><%=m.get("jiashiyuanzhanghao")%></td><td width='11%'>���룺</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%'>��ʻԱ������</td><td width='39%'><%=m.get("jiashiyuanxingming")%></td><td width='11%'>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%'>���䣺</td><td width='39%'><%=m.get("jialing")%></td><td width='11%'>�ֻ���</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%'>���֤��</td><td width='39%'><%=m.get("shenfenzheng")%></td><td width='11%'>��ʻ֤�ţ�</td><td width='39%'><%=m.get("jiashizhenghao")%></td></tr><tr><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



