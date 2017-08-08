<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看缴费记录</title>
</head>
<body>
	<form name="CheckComplainForm" action="./PaymentServlet?action=7" method="post">
		<div style="margin-left: 150px">
			<label style="color: burlywood;">
				<h2>查看缴费记录</h2>
			</label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<div style="margin-top: 120px; margin-left: 490px">
			<b>请输入日期：</b>
			<input type="text" name="checkFeeDate">
			&nbsp&nbsp&nbsp&nbsp
			<input type="image" src="/ZxMgrSys/images/img111.png" value="查询" style="width: 90px;height: 29px ">
		</div>
		<table style="margin-top: 60px; margin-left: 330px" border="1">
			<tr>
				<td width="70px" height="30px" align="center"><b>编号:</b></td>
				<td width="90px" align="center"><b>用户名:</b></td>
				<td width="90px" align="center"><b>费用类型:</b></td>
				<td width="200px" align="center"><b>金额:</b></td>
				<td width="150px" align="center"><b>缴费时间:</b></td>
			</tr>
			<c:forEach items="${pb.beanlist }" var="pay">
				<tr>
					<td width="70px" height="30px" align="center">${pay.pay_ID }</td>
					<td width="90px" align="center">${pay.userName }</td>
					<td width="90px" align="center">${pay.pay_Type }</td>
					<td width="200px" align="center">${pay.pay_Money }</td>
					<td width="150px" align="center">${pay.pay_Time }</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<div style="margin-left: 920px; margin-top: 30px">
		<%@ include file="/tab1.jsp"%>
		<input type="image" src="/ZxMgrSys/images/img122.png" style="width: 90px;height: 29px " value="导出Excel" onclick="toExcel();return false">
	</div>

<script type="text/javascript">
	function toExcel(){
		window.location.href="/ZxMgrSys/PaymentServlet?action=8";
	}
</script>

</body>
</html>