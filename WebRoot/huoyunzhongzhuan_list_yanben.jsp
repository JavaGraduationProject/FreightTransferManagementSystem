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
  </head>


  <body >
  <p>���л�����ת�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ;����תվ��<%=Info.getselect("tujingzhongzhuanzhan","tujingzhongzhuanzhan","tujingzhongzhuanzhanmingcheng"," 1=1 ")%> ���ͣ�<select name='chexing' id='chexing' class="form-control2"><option value="">����</option><option value="С��">С��</option><option value="ԽҰ">ԽҰ</option><option value="���">���</option><option value="��">��</option><option value="�ܳ�">�ܳ�</option></select>  ��ʻԱ�˺ţ�<input name="jiashiyuanzhanghao" type="text" id="jiashiyuanzhanghao" class="form-control2"  />  ��ʻԱ������<input name="jiashiyuanxingming" type="text" id="jiashiyuanxingming" class="form-control2"  />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='huoyunzhongzhuan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>��ת���</td>    <td bgcolor='#cccccc'>;����תվ</td>    <td bgcolor='#cccccc'>����ʱ��</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>��ʻԱ�˺�</td>    <td bgcolor='#cccccc'>��ʻԱ����</td>    <td bgcolor='#cccccc'>�ֻ�</td>    <td bgcolor='#cccccc'>���֤</td>    <td bgcolor='#cccccc'>��ʻ֤��</td>        
	
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"huoyunzhongzhuan"); 
    String url = "huoyunzhongzhuan_list.jsp?1=1"; 
    String sql =  "select * from huoyunzhongzhuan where 1=1";
	if(request.getParameter("tujingzhongzhuanzhan")=="" ||request.getParameter("tujingzhongzhuanzhan")==null ){}else{sql=sql+" and tujingzhongzhuanzhan like '%"+request.getParameter("tujingzhongzhuanzhan")+"%'";}if(request.getParameter("chexing")=="" ||request.getParameter("chexing")==null ){}else{sql=sql+" and chexing like '%"+request.getParameter("chexing")+"%'";}if(request.getParameter("jiashiyuanzhanghao")=="" ||request.getParameter("jiashiyuanzhanghao")==null ){}else{sql=sql+" and jiashiyuanzhanghao like '%"+request.getParameter("jiashiyuanzhanghao")+"%'";}if(request.getParameter("jiashiyuanxingming")=="" ||request.getParameter("jiashiyuanxingming")==null ){}else{sql=sql+" and jiashiyuanxingming like '%"+request.getParameter("jiashiyuanxingming")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhongzhuanbianhao") %></td>    <td><%=map.get("tujingzhongzhuanzhan") %></td>    <td><%=map.get("facheshijian") %></td>    <td><%=map.get("chexing") %></td>    <td><%=map.get("jiashiyuanzhanghao") %></td>    <td><%=map.get("jiashiyuanxingming") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("jiashizhenghao") %></td>        
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="huoyunzhongzhuan_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

