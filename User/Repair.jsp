<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>报修</title>
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
<form action="/ZxMgrSys/RepairServlet?action=A" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>房屋报修</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 50px;margin-left: 300px">
        <tr>
            <td height="60px">
                <b>用 &nbsp&nbsp户&nbsp&nbsp 名:</b>
            </td>
            <td>
                <input type="text" id="userName" name="userName" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="60px">
                <b>房 &nbsp间&nbsp号:</b>
            </td>
            <td>
                <input type="text" id="roomNumber" name="roomNumber" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="60px">
                <b>报修内容:</b>
            </td>
            <td>
                <textarea style="width: 570px;height: 160px "id="content" name="repairContent" onblur="validate(this.id)" onfocus="assignull(this.id)"></textarea>
            </td>
        </tr>
    </table>
    <table style="margin-top: 30px">
        <tr>
            <td width="770px" align="center">
                <input type="image" src="/ZxMgrSys/images/img113.png" value="提交" style="width: 90px;height: 29px " onclick="this.form.submit()">
            </td>
            <td>
                <input type="image"src="/ZxMgrSys/images/img114.png" value="取消" style="width: 90px;height: 29px " onclick="this.form.reset()">
            </td>
        </tr>
    </table>
</form>
</body>
</html>