<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
</head>
<body>
<form name="OAUserInfForm">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看用户信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <div style="margin-top: 70px;margin-left: 340px">
        <b>请输入查询用户名：</b><input type="text" name="userNameForFind">&nbsp&nbsp&nbsp&nbsp<input type="image" src="/ZxMgrSys/images/img111.png" style="width: 90px;height: 29px " value="查询">
    </div>
<table style="margin-top: 50px;margin-left: 200px" border="1">
    <tr>
        <td height="40px"align="center"width="60">
            <b>编号:</b>
        </td>
        <td height="50px"align="center"width="80">
            <b>用户名:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>真实姓名:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>电话号码:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>邮件地址:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>身份证号:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>房间号:</b>
        </td>
        <td width="100" align="center">
            <b>停车位置</b>
        </td>
        <td width="100" align="center">
            <b>权 限</b>
        </td>
        <td width="200" align="center">
            <b>操 作</b>
        </td>
    </tr>
    <tr>
        <td height="40px"align="center"width="60">
        </td>
        <td height="50px"align="center"width="80">
        </td>
        <td height="50px"width="100" align="center">
        </td>
        <td height="50px"width="100" align="center">
        </td>
        <td height="50px"width="100" align="center">
        </td>
        <td height="50px"width="100" align="center">
        </td>
        <td height="50px"width="100" align="center">
        </td>
        <td width="100" align="center">
        </td>
        <td width="100" align="center">
        </td>
        <td width="100" align="center">
            <input type="submit" value="修改" style="background-color:lightsteelblue;width: 70px;height: 25px ">&nbsp&nbsp
            <input type="submit" value="删除" style="background-color:lightsteelblue;width: 70px;height: 25px ">
        </td>
    </tr>
</table>
    <table style="margin-top: 30px;margin-left: 700px">
        <tr>
            <td width="810px" align="center">
                <input type="image" src="../images/img116.png" style="width: 90px;height: 29px " value="上一页">
                &nbsp;&nbsp;
                <select>
                    <option value="" name="">
                        第一页
                    </option>
                </select>
                &nbsp;&nbsp;
                <input type="image" value="下一页" src="../images/img116.png" style="width: 90px;height: 29px ">

            </td>
        </tr>
    </table>
    </form>
</body>
</html>