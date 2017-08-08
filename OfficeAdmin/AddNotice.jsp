<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加公告信息</title>
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
<form name="AddNoticeForm" action="../NoticeMgrServlet?action=add" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>添加公告信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 30px;margin-left: 300px">
        <tr>
            <td height="76px">
                <b>请输入公告信息:</b>
            </td>
        </tr>
        <tr>
            <td>
               <textarea style="width:600px;height: 300px; border-style:solid ;border-color:black" name="notice" onblur="validate(this.id)" onfocus="assignull(this.id)">
            </textarea>
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