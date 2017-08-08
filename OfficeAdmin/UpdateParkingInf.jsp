<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>修改车位信息</title>
<script type="text/javascript" language="javascript">
function del(){
	var temp="ParkMgrServlet?action=del";
	var checkid=document.getElementsByName("checkid");
	for(var i=0;i<checkid.length;i++){
		if(checkid[i].checked){
			temp+="&checkid="+checkid[i].value;
		}		
	}
	window.location.href=temp;
}
</script>
</head>
<body>
	<form name="UpdateParkingInfForm" action="./ParkMgrServlet?action=chge" method="post">
		<div style="margin-left: 150px">
			<label style="color: burlywood;">
				<h2>修改车位信息</h2>
			</label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<table style="margin-top: 50px; margin-left: 300px;" border="2px">
			<tr>
				<td height="50px" width="70px" align="center"><b>选&nbsp&nbsp择</b></td>
				<td height="50px" width="70px" align="center"><b>车 位&nbsp&nbspID</b></td>
				<td width="120px" align="center"><b>用 户 名</b></td>
				<td width="120px" align="center"><b>停车位置</b></br></td>
				<td width="120px" align="center"><b>开始时间</b></td>
				<td width="120px" align="center"><b>结束时间</b></td>
				<td width="160px" align="center"><b>操作</b></td>
			</tr>
			<c:forEach items="${pb.beanlist }" var="userpark">
				<tr>
					<td height="50px" align="center"><input type="checkbox" name="checkid" id=""
							align="center" value="${userpark.userPark_ID }"></td>
					<td height="50px">${ userpark.userPark_ID}</td>
					<td>${ userpark.userName}</td>
					<td>${userpark.park_Pos }</td>
					<td>${userpark.start_Time }</td>
					<td>${userpark.end_Time }</td>
					<td align="center"><input name="deleteparknotes" type="button" style="background-color:lightsteelblue;width: 62px;height: 31px " value="删除" onClick="del()">
						<input type="submit" style="background-color:lightsteelblue;width: 62px;height: 31px " value="同意"></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<div style="margin-left: 960px; margin-top: 30px">
		<%@ include file="/tab1.jsp"%>
	</div>
</body>
</html>