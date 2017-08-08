<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>房屋信息</title>
</head>
<body>
<form>
<div style="margin-left: 150px">
    <label style="color: burlywood;"><h2>查看房间信息</h2></label>
</div>
<div style="margin-left: 100px">
    <hr width="1000px" align="left">
</div>
<div style="margin-top: 70px;margin-left: 340px">
    <b>请输入查询房间号：</b><input type="text" name="roomNumber">&nbsp&nbsp&nbsp&nbsp<input  type="image" src="/ZxMgrSys/images/img111.png" style="width: 90px;height: 29px " onclick="this.form.submit()" name="query" id="query" value="查询">
</div>
<table style="margin-top: 50px;margin-left: 100px" border="1">
    <tr>
        <td height="50px" width="60" align="center">
            <b>编 号 :</b>
        </td>
        <td height="50px" width="80" align="center">
            <b>房间号:</b>
        </td>
        <td height="50px" width="100px"align="center">
            <b>房间类型:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间面积:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间设施:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间状态:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>当前电量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>上月电量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>当月用水量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>上月用水量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间租费:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>操作:</b>
        </td>
    </tr>
    <tr>
        <td height="50px" width="60" align="center">
        </td>
        <td height="50px" width="80" align="center">
        </td>
        <td height="50px" width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
        </td>
        <td height="50px"  width="100px"align="center">
           <input type="submit" value="修改" style="background-color:lightsteelblue;width: 70px;height: 25px ">
        </td>
    </tr>
</table>
    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
            <td width="810px" align="center">
                <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " value="上一页">
                &nbsp;&nbsp;
                <select>
                    <option value="" name="">
                        第一页
                    </option>
                </select>
                &nbsp;&nbsp;
                <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " value="下一页">

            </td>
        </tr>
    </table>
</form>
</body>
</html>