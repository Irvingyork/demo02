<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>设置车位价格</title>
</head>
<body>
<form name="SetWEfeeForm" action="../ParkMgrServlet?action=setfee" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>设置车位费</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table  style="margin-top: 50px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>车位费（/月）:</b>
            </td>
            <td>
                <input type="text" name="parkPrice"/>
            </td>
        </tr>
    </table>
   <table style="margin-top: 30px">
        <tr>
             <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img119.png" value="修改" style="width: 90px;height: 29px ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img112.png" style="width: 90px;height: 29px "onclick="this.form.reset();return false">
            </td>
        </tr>
    </table>
</form>
</body>
</html>