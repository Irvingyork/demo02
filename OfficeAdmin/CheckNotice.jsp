<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>查看公告信息</title>
<script type="text/javascript" language="javascript">
	function del() {
		var temp = "NoticeMgrServlet?action=del";
		var checkid = document.getElementsByName("checkid");
		for (var i = 0; i < checkid.length; i++) {
			if (checkid[i].checked) {
				temp += "&checkid=" + checkid[i].value;
			}
		}
		window.location.href = temp;
	}
</script>
</head>
<body>
	<form name="CheckComplainForm" action="./NoticeMgrServlet?action=find" method="post">
		<div style="margin-left: 150px">
			<label style="color: burlywood;">
				<h2>查看公告信息</h2>
			</label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<div style="margin-top: 70px; margin-left: 340px">
			<b>请输入日期：</b>
			<input type="text" name="noticeDate">
			&nbsp&nbsp&nbsp&nbsp
			<input type="image" src="/ZxMgrSys/images/img111.png" style="width: 90px;height: 29px " value="查询" onclick="this.form.submit()">
		</div>
		<table style="margin-top: 30px; margin-left: 300px" border="1">
			<tr>
				<td height="40px" width="40px" align="center"><b>选择</b></td>
				<td width="70px" height="30px" align="center"><b>编号:</b></td>
				<td width="300px" align="center"><b>公告内容:</b></td>
				<td width="150px" align="center"><b>发布时间:</b></td>
				<td width="100px" align="center"><b>操作:</b></td>
			</tr>
			<c:forEach items="${pb.beanlist }" var="notice">
				<tr>
					<td height="40px"><input type="checkbox" name="checkid" align="center" value="${notice.noticeID }"></td>
					<td width="70px" height="30px" align="center">${notice.noticeID }</td>
					<td width="300px" align="center">${notice.content }</td>
					<td width="150px" align="center">${notice.public_Time }</td>
					<td width="100px" align="center"><input type="button" style="background-color:lightsteelblue;width: 68px;height: 33px " value="删除" onClick="del()">
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<div style="margin-left: 860px; margin-top: 30px">
		<%@ include file="/tab1.jsp"%>
	</div>
</body>
</html>