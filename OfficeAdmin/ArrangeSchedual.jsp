<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加排班表</title>
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
<form name="AddUserInfForm" action="<%=request.getContextPath()%>/OfficeServlet?action=5" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>添加排班信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="76px">
                <b>用 &nbsp户&nbsp 名:</b>
            </td>
            <td>
                <input type="text" name="userName" value="<%=request.getParameter("username") %>" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>工作内容:</b>
            </td>
            <td>
                <input type="text" name="content" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>工作时间:</b>
            </td>
            <td>
                <input type="text" name="workTime" onblur="validate(this.id)" onfocus="assignull(this.id)"/>
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