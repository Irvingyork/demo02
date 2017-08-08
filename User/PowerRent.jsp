<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>缴纳电费</title>
</head>
<body>
<script type="text/javascript">
	function payment()
	{
		window.location.href = "/ZxMgrSys/Payment.jsp?payType=Elec&fee=" + document.getElementById("totalPrice").value;
	}
	
</script>
<form name="PowerForm">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>缴纳电费</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table  style="margin-top: 50px;margin-left: 300px">
        <tr>
            <td height="50px">
                <b>当月用电量:</b>
            </td>
            <td>
                <input type="text" value="${requestScope.roomOfElecFee.getCur_Elec() }" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>上月用电量:</b>
            </td>
            <td>
                <input type="text" value="${requestScope.roomOfElecFee.getLast_Elec() }" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>单价（电）:</b>
            </td>
            <td>
                <input type="text" value="${requestScope.roomOfElecFee.getElec_Price() }" readonly/>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <b>你应缴纳金额:</b>
            </td>
            <td>
                <input type="text" id="totalPrice" name="totalPrice" value="${requestScope.totalElecFee }" readonly/>
            </td>
        </tr>
    </table>
    <table style="margin-top: 30px">
        <tr>
            <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img115.png" value="立即支付" style="width: 90px;height: 29px " onclick="payment();return false">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img114.png" style="width: 90px;height: 29px "onclick="window.location.href='/ZxMgrSys/User/center.jsp';return false">       
            </td>
        </tr>
    </table>
</form>
</body>
</html>