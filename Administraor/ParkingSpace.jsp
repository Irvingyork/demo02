<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看车位信息</title>
</head>
<body>
<form name="OAParkingSpaceForm">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看车位信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table  style="margin-top: 50px;margin-left: 300px;" border="2px">
        <tr>
            <td height="50px" width="70px"align="center">
                <b>序&nbsp&nbsp列</b>
            </td>
            <td width="120px"align="center">
                <b>停车位置</b>
            </td>
            <td width="120px"align="center">
                <b>租用状态</b></br>
            </td>
            <td width="120px"align="center">
                <b>车位单价（月）</b>
            </td>
            <td width="120px"align="center">
                <b>租用时间</b>
            </td>
            <td width="120px"align="center">
                <b>操作</b>
            </td>
        </tr>
        <tr>
            <td height="50px">

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td align="center">
                <select name="">
                <option name=""value="">3个月</option>
                <option name=""value="">6个月</option>
                <option name=""value="">9个月</option>
                <option name=""value="">12个月</option>
                </select>
            </td>
            <td align="center">
                <input type="submit" style="background-color:lightsteelblue;width: 62px;height: 31px " value="修改">
            </td>
        </tr>
    </table>
</form>
</body>
</html>