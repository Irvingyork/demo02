<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改排班信息</title>
</head>
<body>
<form name="UpdateRoomInfForm" action="<%=request.getContextPath()%>/OfficeServlet?action=11&scheid=${requestScope.scheduling.getScheID()}" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>修改排班信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>姓名:</b>
            </td>
            <td>
                <input type="text" name="userName" value="${requestScope.scheduling.getUserName() }"  />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>工作内容:</b>
            </td>
            <td>
                <input type="text" name="content" value="${requestScope.scheduling.getContent() }" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>工作时间:</b>
            </td>
            <td>
                <input type="text" name="workTime" value="${requestScope.scheduling.getWork_Time() }" />
            </td>
        </tr>
    </table>
   <table style="margin-top: 30px">
        <tr>
             <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img011.png" value="修改" style="width: 90px;height: 29px ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img112.png" style="width: 90px;height: 29px "onclick="this.form.reset();return false">
            </td>
        </tr>
    </table>
</form>
</body>
</html>