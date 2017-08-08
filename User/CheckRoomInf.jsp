<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
	RoomVO room=new RoomVO();
	room=(RoomVO)session.getAttribute("userroom");
%>
    <meta charset="UTF-8">
    <title>房屋信息</title>
</head>
<body>
<div style="margin-left: 150px">
    <label style="color: burlywood;"><h2>查看房间信息</h2></label>
</div>
<div style="margin-left: 100px">
    <hr width="1000px" align="left">
</div>
<table style="margin-top: 10px;margin-left: 300px">
    <tr>
        <td height="50px">
            <b>房 &nbsp间 &nbsp号:</b>
        </td>
        <td>
            <input type="text" name="roomNumber" value="<%=room.getRoom_Number() %>" readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>房间类型:</b>
        </td>
        <td>
            <input type="text" name="roomStyle" value="<%=room.getRoom_Style() %>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>房间面积:</b>
        </td>
        <td>
            <input type="text" name="roomArea" value="<%=room.getRoom_Area() %>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>房间设施:</b>
        </td>
        <td>
            <input type="text" name="roomGoods" value="<%=room.getGoods_status()%>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>当前电量:</b>
        </td>
        <td>
            <input type="text" name="curElec" value="<%=room.getCur_Elec() %>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>上月电量:</b>
        </td>
        <td>
            <input type="text" name="lastElec" value="<%=room.getLast_Elec() %>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>当月用水量:</b>
        </td>
        <td>
            <input type="text" name="curWater" value="<%=room.getCur_Water() %>"  readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>上月用水量:</b>
        </td>
        <td>
            <input type="text" name="lastWater" value="<%=room.getLast_Water() %>" readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>单价（电）:</b>
        </td>
        <td>
            <input type="text" name="elecPrice" value="<%=room.getElec_Price() %>"   readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>单价（水）:</b>
        </td>
        <td>
            <input type="text" name="waterPrice" value="<%=room.getWater_Price() %>" readonly/>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>房间租费:</b>
        </td>
        <td>
            <input type="text" name="roomPrice" value="<%=room.getRoom_Price()%>"  readonly/>
        </td>
    </tr>
</table>
</body>
</html>