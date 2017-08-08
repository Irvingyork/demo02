<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登记用户信息</title>
    <script>
        function validate(x) {
            if (document.getElementById(x).value == null
                || document.getElementById(x).value == "") {
                document.getElementById(x).style.borderColor = "red";
                document.getElementById(x).value = "不能为空"
            }
        }
        function assignull(x) {
            document.getElementById(x).style.borderColor = "#8B8B7A";
            document.getElementById(x).value = null
        }
    </script>
</head>
<body>
<form name="AddUserInfForm" action="<%=request.getContextPath()%>/OfficeServlet?action=1" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>添加用户信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="76px">
                <b>用 &nbsp户&nbsp名:</b>
            </td>
            <td>
                <input type="text" id="userName" name="userName"onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>真实姓名:</b>
            </td>
            <td>
                <input type="text" id="realName" name="realName" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>手 &nbsp机&nbsp号:</b>
            </td>
            <td>
                <input type="text" id="phoneNumber" name="phoneNumber" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>邮箱地址:</b>
            </td>
            <td>
                <input type="text" id="email" name="email" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>权限:</b>
            </td>
            <td>
                <select name="power">
                    <option value="3">安保人员</option>
                    <option value="4">保洁人员</option>
                </select>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>身份证号:</b>
            </td>
            <td>
                <input type="text" id="idNumber" name="idNumber" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
    </table>
<table style="margin-top: 30px">
        <tr>
             <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img118.png" value="修改" style="width: 90px;height: 29px ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img112.png" style="width: 90px;height: 29px "onclick="this.form.reset();return false">
            </td>
        </tr>
    </table>
</form>
</body>
</html>