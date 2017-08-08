<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>支付页面</title>
</head>
<body>
<%! int payID = 1; %>
<form action="PaymentServlet?action=4" method="post">
<div>
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>在线支付</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
</div>
<table  style="margin-top: 10px;margin-left: 300px;"border=1px>
    <tr>
        <td height="50px" width="120px">
            <b>订单金额:</b>
        </td>
        <td width="120px">
            <input type="text" name="totalPrice" value="<%=request.getParameter("fee") %>">
        </td>

        <td height="50px" width="120px">
            <b>商户名称:</b>
        </td>
        <td colspan="3">
            <label style="color: #FFC125"><h2>致馨公寓</h2></label>
        </td>
    </tr>
    <tr>
        <td height="50px">
            <b>交易日期:</b>
        </td>
        <td>
			<%Date now = new Date(); java.sql.Date sqlNow = new java.sql.Date(now.getTime()); %>
            <input type="text" name="curTime" value="<%=sqlNow %>">
        </td>
        <td height="50px">
            <b>交易种类:</b>
        </td>
        <td>
           	<input type="text" name="payType" value="<%=request.getParameter("payType")%>">
        </td>
        <td height="50px">
            <b>交易币种:</b>
        </td>
        <td>
            <label style="color: #FFC125"><h2>人民币</h2></label>
        </td>
    </tr>
</table>
<table style="margin-top: 30px">
    <tr>
        <td width="860px" align="center">
            <input type="image" src="/ZxMgrSys/images/img121.png" style="width: 90px;height: 29px "value="确认支付"></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="image" src="/ZxMgrSys/images/img114.png" style="width: 90px;height: 29px " value="返回" onclick="window.location.href='User/center.jsp'">
        </td>
    </tr>
</table>
</form>
</body>
</html>