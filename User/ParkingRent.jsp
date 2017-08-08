<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>缴纳车位费</title>
</head>
<body>
<script type="text/javascript">
	function payment()
	{
		window.location.href = "/ZxMgrSys/Payment.jsp?payType=park&fee=" + document.getElementById("totalPrice").value;
	}
	
</script>
<form name="ParkingRentForm">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>缴纳车位费</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table  style="margin-top: 50px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>租期时间（月）:</b>
            </td>
            <td>
                <input type="text" name="rentMonth" value="${requestScope.orderMonth }" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>租&nbsp &nbsp金&nbsp （月）:</b>
            </td>
            <td>
                <input type="text" name="parkPrice" value="${requestScope.parkPrice }" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>你应缴纳金额:</b>
            </td>
            <td>
                <input type="text" id="totalPrice" name="totalPrice" value="${requestScope.totalParkFee }" readonly/>
            </td>
        </tr>
    </table>
    <table style="margin-top: 30px">
 <tr>
            <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img115.png" value="立即支付" style="width: 90px;height: 29px " onclick="payment();return false">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img114.png" style="width: 90px;height: 29px " onclick="window.location.href='/ZxMgrSys/User/center.jsp';return false">
            </td>
        </tr>
    </table>
</form>
</body>
</html>