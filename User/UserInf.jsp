<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
	UserVO user = new UserVO();
	user = (UserVO) session.getAttribute("user");
%>
<meta charset="UTF-8">
<title>个人中心</title>
</head>
<body>
	<form name="UserInfForm" >
		<div style="margin-left: 150px">
			<label style="color: burlywood;"><h2>用户基本信息</h2></label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<table style="margin-top: 10px; margin-left: 300px">
			<tr>
				<td height="50px"><b>用 &nbsp户 &nbsp名:</b></td>
				<td><input type="text" name="userName" value="<%=user.getUserName() %>"  readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>真实姓名:</b></td>
				<td><input type="text" name="realName" value="<%=user.getRealName() %>" readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>电话号码:</b></td>
				<td><input type="text" name="phone" value="<%=user.getPhone() %>" readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>邮件地址:</b></td>
				<td><input type="text" name="email" value="<%=user.getEmail()%>" readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>身份证号:</b></td>
				<td><input type="text" name="idNumber"  value="<%=user.getId_Number() %>" readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>房间号:</b></td>
				<td><input type="text" name="roomNumber" value="<%=user.getRoom_Number() %>" readonly /></td>
			</tr>
			<tr>
				<td height="50px"><b>停车位置:</b></td>
				<td><input type="text" name="parkPos" value="<%=user.getPark_Pos() %>" readonly /></td>
			</tr>
		</table>
	</form>
</body>
</html>