<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="css/login.css" type="text/css">
</head>

<%
	String username="";
	String password="";
	String repass=null;
	String autoLogin=null;
	String doAutoLogin=null;
	
	Cookie cookies[]=request.getCookies();
	if(cookies!=null){
		for(Cookie c:cookies){
			if(c.getName().equals("username"))
				username=c.getValue();
			else if(c.getName().equals("password"))
				password=c.getValue();
			else if(c.getName().equals("repass"))
				repass=c.getValue();
			else if(c.getName().equals("autoLogin"))
				autoLogin=c.getValue();
			else if(c.getName().equals("doAutoLogin"))
				doAutoLogin=c.getValue();
		}
	}
	
	if(doAutoLogin!=null){
		response.sendRedirect("LoginServlet");
	}
	
%>

<body>
<form name="login" id="login" method="post" action="LoginServlet">
<div class="content">
    <div class="login">
        <table>
            <tr>
                <td class="ltd">
                </td>
                <td>
                   用户登录
                </td>
            </tr>
            <tr>
                <td class="ltd">
                    <img src="images/img3.jpg" alt="图片"/>
                    用户名
                </td>
                <td class="ctd">
                    <input type="text" id="userName" name="userName" value="<%=username%>"/>
                </td>
            </tr>
            <tr>
                <td class="ltd">
                    <img src="images/img4.png" alt="图片"/>
                    密&nbsp&nbsp码
                </td>
                <td>
                    <input type="password" id="password" name="password" value="<%=password %>" />
                </td>
            </tr>
            <tr>
                <td class="ltd">
                    <img src="images/img7.png"/>
                    验证码
                </td>
                <td>
                    <input type="text" id="yanzhengma" name="yanzhengma"/>
                </td>
                <td class="rtd">
                    <img id="codeImg" src="image.jsp" alt="看不清？点击换一张" style="cursor: hand" onclick="javascript:reloadcode()" height="20" />
                </td>
            </tr>
            <tr>
                <td class="ltd">

                </td>
                <td>
                    <input type="checkbox" name="rePass" value="rePass">记住密码
                    <input type="checkbox" name="autoLogin" value="autoLogin" onclick="toChecked(this)">自动登录
                </td>
            </tr>
            <tr>
                <td class="ltd"></td>
                <td >
                    <img src="images/img21.png" onclick="toLogin()">
                </td>
            </tr>
        </table>
    </div>
</div>
</form>

<script type="text/javascript">
	var repasslogo="<%=repass%>";
	var repassCheck=document.getElementsByName("rePass");
	if(repasslogo!="null"){
		repassCheck[0].checked=true;
	}
	
	var autoLoginlogo="<%=autoLogin%>";
	var autoLoginCheck=document.getElementsByName("autoLogin");
	if(autoLoginlogo!="null"){
		autoLoginCheck[0].checked=true;
	}
	
	var msg="<%=request.getAttribute("msg")%>";
	if(msg!="null"){
		alert(msg);
	}
	
	function toChecked(c){
		if(c.checked==true){
			repassCheck[0].checked=true;
		}
	}
	
	function vaildate(f){
		if(f.userName.value==""){
			f.userName.focus();
			alert("用户名不能为空");
			return false;
		}else if(f.password.value==""){
			f.password.focus();
			alert("密码不能为空");
			return false;
		}else{
			return true;
		}
	}
	
	function toLogin(){
		var myform=document.getElementById("login");
		if(vaildate(myform)){
			myform.submit();
		}
	}
</script>

<script type= "text/javascript" language="javascript">
	function reloadcode() {
		document.getElementById("codeImg").src = "image.jsp?"+Math.random();
	}
</script>

</body>
</html>