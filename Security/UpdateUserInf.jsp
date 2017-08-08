<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
	UserVO user=new UserVO();
	user=(UserVO)session.getAttribute("user");
%>
    <meta charset="UTF-8">
    <title>修改个人信息</title>
</head>
<body bgcolor="#F5F5F5">
<form name="UpdateUserInfForm"  action="/ZxMgrSys/UserServlet?action=A" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>修改用户信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>用 &nbsp户 &nbsp名:</b>
            </td>
            <td>
                <input type="text" name="userName" value="<%=user.getUserName() %>"  readonly />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>真实姓名:</b>
            </td>
            <td>
                <input type="text" name="realName" value="<%=user.getRealName() %>" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>电话号码:</b>
            </td>
            <td>
                <input type="text" name="phone" value="<%=user.getPhone() %>" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>邮件地址:</b>
            </td>
            <td>
                <input type="text" name="email" value="<%=user.getEmail()%>" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>身份证号:</b>
            </td>
            <td>
                <input type="text" name="idNumber" value="<%=user.getId_Number() %>" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房间号:</b>
            </td>
            <td>
                <input type="text" name="roomNumber" value="<%=user.getRoom_Number() %>" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>停车位置:</b>
            </td>
            <td>
                <input type="text" name="parkPos" value="<%=user.getPark_Pos() %>" readonly/>
            </td>
        </tr>
    </table>
    <table style="margin-top: 30px">
        <tr>
             <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img011.png" value="修改" style="width: 90px;height: 29px " >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img112.png" style="width: 90px;height: 29px "onclick="this.form.reset();return false">
            </td>
        </tr>
    </table>
</form>
</body>
</html>