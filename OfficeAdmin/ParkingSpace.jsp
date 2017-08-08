<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看车位信息</title>
</head>
<body>
	<form name="OAParkingSpaceForm" action="./ParkMgrServlet?action=delpark" method="post">
		<div style="margin-left: 150px">
			<label style="color: burlywood;">
				<h2>查看车位信息</h2>
			</label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<table style="margin-top: 50px; margin-left: 300px;" border="2px">
			<tr>
				<td height="40px" width="40px" align="center"><b>选择</b></td>
				<td width="70px" align="center"><b>车位ID</b></td>
				<td width="120px" align="center"><b>停车位置</b></td>
				<td width="120px" align="center"><b>租用状态</b></br></td>
				<td width="120px" align="center"><b>车位单价（月）</b></td>
				<td width="120px" align="center"><b>操作</b></td>
			</tr>
			<c:forEach items="${pb.beanlist }" var="park">
				<tr>
					<td height="40px"><input type="checkbox" name="checkids" align="center" value="${park.parkID }"></td>
					<td>${ park.parkID}</td>
					<td>${park.park_Pos }</td>
					<td>${park.park_Status }</td>
					<td>${park.park_Price }</td>
					<td align="center"><input type="submit" style="background-color:lightsteelblue;width: 62px;height: 31px " value="删除"></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<div style="margin-left: 920px; margin-top: 30px">
		<%@ include file="/tab1.jsp"%>
	</div>
</body>
</html>