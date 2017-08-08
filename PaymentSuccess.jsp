<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>支付成功页面</title>
</head>
<body>
<div style="margin-left: 150px">
    <label style="color: burlywood;"><h2>在线支付</h2></label>
</div>
<div style="margin-left: 100px">
    <hr width="1000px" align="left">
</div>
<table  style="margin-top: 10px;margin-left: 300px">
    <tr>
        <td height="50px" width="260px">
            <b>你已成功支付！5秒后跳转。。。</b>
        </td>
    </tr>
    <tr>
        <td><a href="index.html">点击立即跳转！</a></td>
    </tr>
</table>
<script>
    setTimeout(function(){
        window.location.href="/ZxMgrSys/User/center.jsp";
    },5000);
</script>
</body>
</html>