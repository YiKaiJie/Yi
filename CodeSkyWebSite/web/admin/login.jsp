<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/10
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="jspSamples.unit7.websiteSample.*" %>
<%
request.setCharacterEncoding("GBK");//���ñ��뷽ʽΪGBK
String Action=request.getParameter("Action");//�ж��Ƿ񵥻�����¼��
if(Action!=null && Action.equals("Login")){
    String User=request.getParameter("User");//�õ���¼�û���
    String Pwd=request.getParameter("Pwd");//�õ���¼����
    out.println("<script>alert('"+User+"');</script>");
    our.println("<script>alert('"+Pwd+"');</script>");
    Login login=new Login();//�½���¼��Login
    boolean isOK=login.LoginCheck(User,Pwd);//���÷���LoginCheck,�жϷ���ֵ���滹�Ǽ�
    if (isOK){
        //���isOK=true��˵����֤�ɹ������Խ����̨ҳ��news.jsp
        out.println("<SCRIPT LANGUAGE='JavaScript'>alert('��¼�ɹ���');location.href='news.jsp';</SCRIPT>");
    }else{
        //���isOK=false��˵����֤ʧ�ܣ��޷������̨ҳ��
        out.println("<SCRIPT LANGUAGE='JavaScript'>alert('��¼ʧ�ܣ�');location.href='login.jsp'</SCRIPT>");
    }
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>��̨��¼</title>
    <link rel="stylesheet" href="css/amazeui.min.scc"/>
    <script src="js/main.js"></script>
</head>
<%--���뱳��ͼƬ--%>
<body style="background: url(img/login-bg.png)no-repeat">
<%--��˾����ͼƬ--%>
<div class="header" style="text-align: center;margin-top: 100px">
    <div class="am-g">
        <img src="img/loginTitle.png">
    </div>
</div>
<%--��¼��--%>
<div class="am-g" style="margin-top: 20px">
    <div class="am-u-lg-6 am-u-md-10 am-u-sm-centered" style="background: url(img/loginForm.png)no-repeat;height: 479px;width: 695px">
<%--��¼��--%>
    <form action="login.jsp" method="post" class="am-form login-form" style="padding:50px 0px 0px 120px;width: 550px onSubmit="returen LoginCheck()">
        <label for="name">�û�����</label><input type="text" name="User" id="User" value=""><br><label for="ps">���룺</label>
        <input type="password" name="Pwd" id="Pwd" value=""><br>
<%--��¼��ť--%>
    <div class="am-cf">
        <input name="Action" type="hidden" value="Logion"><input type="submit" value="��¼" id="save" style="width: 100%;border-radius: 0.5em"
        class="am-btn am-btn-primary am-btn-sm am-round">
    </div>
    </form>
    </div>
</div>
</body>
</html>
