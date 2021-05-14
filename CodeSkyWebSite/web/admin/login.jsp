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
request.setCharacterEncoding("GBK");//设置编码方式为GBK
String Action=request.getParameter("Action");//判断是否单机“登录”
if(Action!=null && Action.equals("Login")){
    String User=request.getParameter("User");//得到登录用户名
    String Pwd=request.getParameter("Pwd");//得到登录密码
    out.println("<script>alert('"+User+"');</script>");
    our.println("<script>alert('"+Pwd+"');</script>");
    Login login=new Login();//新建登录类Login
    boolean isOK=login.LoginCheck(User,Pwd);//调用方法LoginCheck,判断返回值是真还是假
    if (isOK){
        //如果isOK=true，说明验证成功，可以进入后台页面news.jsp
        out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录成功！');location.href='news.jsp';</SCRIPT>");
    }else{
        //如果isOK=false，说明验证失败，无法进入后台页面
        out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录失败！');location.href='login.jsp'</SCRIPT>");
    }
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>后台登录</title>
    <link rel="stylesheet" href="css/amazeui.min.scc"/>
    <script src="js/main.js"></script>
</head>
<%--引入背景图片--%>
<body style="background: url(img/login-bg.png)no-repeat">
<%--公司标题图片--%>
<div class="header" style="text-align: center;margin-top: 100px">
    <div class="am-g">
        <img src="img/loginTitle.png">
    </div>
</div>
<%--登录框--%>
<div class="am-g" style="margin-top: 20px">
    <div class="am-u-lg-6 am-u-md-10 am-u-sm-centered" style="background: url(img/loginForm.png)no-repeat;height: 479px;width: 695px">
<%--登录表单--%>
    <form action="login.jsp" method="post" class="am-form login-form" style="padding:50px 0px 0px 120px;width: 550px onSubmit="returen LoginCheck()">
        <label for="name">用户名：</label><input type="text" name="User" id="User" value=""><br><label for="ps">密码：</label>
        <input type="password" name="Pwd" id="Pwd" value=""><br>
<%--登录按钮--%>
    <div class="am-cf">
        <input name="Action" type="hidden" value="Logion"><input type="submit" value="登录" id="save" style="width: 100%;border-radius: 0.5em"
        class="am-btn am-btn-primary am-btn-sm am-round">
    </div>
    </form>
    </div>
</div>
</body>
</html>
