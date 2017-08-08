<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改房间信息</title>
</head>
<body>
<form name="UpdateRoomInfForm" action="<%=request.getContextPath()%>/RoomServlet?action=4" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>修改房间信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>房&nbsp &nbsp 间&nbsp  &nbsp号:</b>
            </td>
            <td>
                <input type="text" name="roomNumber" value="${requestScope.room.getRoom_Number() }" readonly />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房 间 类 型:</b>
            </td>
            <td>
                <input type="text" name="roomStyle" value="${requestScope.room.getRoom_Style()}" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房 间 面 积:</b>
            </td>
            <td>
                <input type="text" name="roomArea" value="${requestScope.room.getRoom_Area()}" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房 间 设 施:</b>
            </td>
            <td>
                <input type="text" name="roomGoods" value="${requestScope.room.getGoods_status()}" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房 间 状 态:</b>
            </td>
            <td>
                <select name="roomStatus">
                   <c:if test="${requestScope.room.getRent_status() == 1 }">
                    <option value="1" selected > 已租出</option>
                    </c:if>
                    <c:if test="${requestScope.room.getRent_status() == 0 }">
                    <option value="0" selected > 未租出</option>
                    </c:if>
                </select>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>当前用电量:</b>
            </td>
            <td>
                <input type="text" name="curWater"  value="${requestScope.room.getCur_Elec()}" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>上月用电量:</b>
            </td>
            <td>
                <input type="text" name="lastWater" value="${requestScope.room.getLast_Elec()}" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>当月用水量:</b>
            </td>
            <td>
                <input type="text" name="curElec" value="${requestScope.room.getCur_Water()}" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>上月用水量:</b>
            </td>
            <td>
                <input type="text" name="lastElec" value="${requestScope.room.getLast_Water()}" />
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>房 租 费 用:</b>
            </td>
            <td>
                <input type="text" name="roomPrice" value="${requestScope.room.getRoom_Price()}"/>
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