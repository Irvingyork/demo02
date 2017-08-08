<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看维修信息</title>
</head>
<body>
<form name="CheckComplainForm">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看维修信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <div style="margin-top: 70px;margin-left: 340px">
        <b>请输入日期：</b><input type="text" name="repairDate">&nbsp&nbsp&nbsp&nbsp<input  type="image" src="/ZxMgrSys/images/img111.png" style="width: 90px;height: 29px " onclick="this.form.submit()" name="query" id="query" value="查询">
    </div>
    <table style="margin-top: 30px;margin-left: 230px" border="1">
        <tr>
            <td width="70px"height="30px"align="center">
                <b>编号:</b>
            </td>
            <td width="90px"align="center">
                <b>房间号:</b>
            </td>
            <td width="90px"align="center">
                <b>用户名:</b>
            </td>
            <td width="200px"align="center">
                <b>维修内容:</b>
            </td>
            <td width="150px"align="center">
                <b>报修时间:</b>
            </td>
            <td width="150px"align="center">
                <b>处理时间:</b>
            </td>
            <td width="100px"align="center">
                <b>操作:</b>
            </td>
        </tr>
        <tr>
            <td width="70px"height="30px"align="center">

            </td>
            <td width="90px"align="center">

            </td>
            <td width="90px"align="center">

            </td>
            <td width="200px"align="center">

            </td>
            <td width="150px"align="center">

            </td>
            <td width="150px"align="center">

            </td>
            <td width="100px"align="center">
                <input type="button" value="确认处理" style="background-color:lightsteelblue;width: 79px;height: 34px ">
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
                <input type="image" src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px " value="下一页">

            </td>
        </tr>
    </table>
</form>

</body>
</html>