<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ϵͳ��̨����</title>
<link rel="stylesheet" href="images/css/bootstrap.css" />
 
<script type="text/javascript" src="images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="images/js/bootstrap.min.js"></script>
<style type="text/css">
body{ background:#0066A8 url(images/login_bg.png) no-repeat center 0px;}
.tit{ margin:auto; margin-top:170px; text-align:center; width:350px; padding-bottom:20px;}
.login-wrap{ width:220px; padding:30px 50px 0 330px; height:290px; background:#fff url(images/20150212154319.jpg)   no-repeat 30px 40px; background-size:270px 246px;  margin:auto; overflow: hidden;}
.login_input{ display:block;width:210px;}
.login_user{ background: url(images/input_icon_1.png) no-repeat 200px center; font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif}
.login_password{ background: url(images/input_icon_2.png) no-repeat 200px center; font-family:"Courier New", Courier, monospace}
.btn-login{ background:#40454B; box-shadow:none; text-shadow:none; color:#fff; border:none;height:35px; line-height:26px; font-size:14px; font-family:"microsoft yahei";}
.btn-login:hover{ background:#333; color:#fff;}
.copyright{ margin:auto; margin-top:10px; text-align:center; width:370px; color:#CCC}
@media (max-height: 700px) {.tit{ margin:auto; margin-top:100px; }}
@media (max-height: 500px) {.tit{ margin:auto; margin-top:50px; }}
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('����������');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body>
<div class="tit"><div style="font-family:����; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:15pt">
            <div align="center">������ת����ϵͳ</div>
        </div></div>
<div class="login-wrap">
<form name="form1" method="post" action="jspmhyzzglxthsg9411C8?ac=adminlogin&a=a"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="25" valign="bottom">�û�����</td>
    </tr>
    <tr>
      <td><input type="text" class="login_input login_user" id="username" name="username" value="" placeholder="�û���" /></td>
    </tr>
    <tr>
      <td height="25" valign="bottom">��  �룺</td>
    </tr>
    <tr>
      <td><input type="password"  class="login_input login_password" value="" id="pwd" name="pwd"  placeholder="��  ��" /></td>
    </tr>
	<tr>
      <td height="25" valign="bottom">Ȩ�ޣ�</td>
    </tr>
    <tr>
      <td><select name="cx" id="cx" class="login_input login_user">
<option value="����Ա">����Ա</option>
<option value="��ͨ�û�">��ͨ�û�</option>
		    <option value="������ʻԱ">������ʻԱ</option>

            </select></td>
    </tr>
	<tr>
      <td height="25" valign="bottom">��֤�룺</td>
    </tr>
    <tr>
      <td><input type="text" class="login_input login_user" value="" style="width:80px;" id="pagerandom" name="pagerandom" placeholder="��֤��" />&nbsp;<a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp"  class="code"   style="cursor:pointer; "> </a></td>
    </tr>
    <tr>
      <td height="60" valign="bottom"><input type="submit" name="Submit" value="��½" onClick="return check();">
              <input type="reset" name="Submit2" value="����"></td>
    </tr>
   
  </table>
  </form>
</div>
<div class="copyright">xxxxxx</div>
</body>
</html>

