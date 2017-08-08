<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"
	import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
	List<ComplaintsVO> comlist = (List<ComplaintsVO>) request.getAttribute("comlist");
	UserVO user = new UserVO();
	user = (UserVO) session.getAttribute("user");
	int pagecount;
	String pagechange;
	int cpage;
	if(request.getAttribute("pagecount")!=null){
		 pagecount = (int) request.getAttribute("pagecount");
	}else{
		pagecount=0;
	}
	if(request.getAttribute("pagechange")!=null){
		pagechange=(String)request.getAttribute("pagechange");
		cpage=Integer.parseInt(pagechange);
	}else{
		cpage=1;
	}
%>
<meta charset="UTF-8">
<title>查看个人投诉信息</title>
</head>
<body>
	<form name="UserCheckComplainForm"
		action="/ZxMgrSys/ComplaintsServlet?action=C&Qname=<%=user.getUserName()%>"
		method="post">
		<div style="margin-left: 150px">
			<label style="color: burlywood;"><h2>查看投诉信息</h2></label>
		</div>
		<div style="margin-left: 100px">
			<hr width="1000px" align="left">
		</div>
		<table style="margin-top: 30px; margin-left: 230px" border="1">
			<tr>
				<td width="70px" height="30px" align="center"><b>编号:</b></td>
				<td width="90px" align="center"><b>房间号:</b></td>
				<td width="90px" align="center"><b>用户名:</b></td>
				<td width="200px" align="center"><b>投诉内容:</b></td>
				<td width="150px" align="center"><b>投诉时间:</b></td>
				<td width="150px" align="center"><b>处理时间:</b></td>
				<td width="100px" align="center"><b>操作:</b></td>
			</tr>
			<%
				if (comlist != null && comlist.size() != 0) {
					for (int i = 0; i < comlist.size(); i++) {
			%>
			<tr>
				<td width="70px" height="30px" align="center"><%=comlist.get(i).getComp_ID()%></td>
				<td width="90px" align="center"><%=comlist.get(i).getRoom_Number()%></td>
				<td width="90px" align="center"><%=comlist.get(i).getUserName()%></td>
				<td width="90px" align="center"><%=comlist.get(i).getContent()%></td>
				<td width="200px" align="center"><%=comlist.get(i).getStart_Time()%></td>
				<td width="150px" align="center"><%=comlist.get(i).getEnd_Time()%></td>
				<td width="100px" align="center"><input type="button" name="delete" id="<%=comlist.get(i).getComp_ID()%>" style="background-color:lightsteelblue;width: 60px;height: 25px " onclick="deleteComp(this)" value="删除"></td>
			</tr>
			<%
				}
				}
			%>


		</table>
		<table style="margin-top: 30px; margin-left: 380px">
			<tr>
				<td width="810px" align="center"><input type="image" name="pre" id="pre"  src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px "
					value="上一页" onclick="PreNextChange(this)"
					>&nbsp;&nbsp;
					<select name="page" id="page" onChange="changePage()">
						<%
							
						for (int i = 1; i <= pagecount; i++) {
						%>
						<option value="<%=i %>" <%if(cpage==i){%>selected<%} %>  >第<%=i %>页</option>
						<%
							}
			
						%>
						
				</select> &nbsp;&nbsp; <input type="image" value="下一页" name="next" id="next" onclick="PreNextChange(this);return false"
					src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px ">

				</td>
			</tr>
		</table>
	</form>
<script>
	function changePage(){
		var page=document.getElementById("page");
		var index=page.selectedIndex;
		var page1=page.options[index].value;
		window.location.href="/ZxMgrSys/ComplaintsServlet?action=D&Qname=<%=user.getUserName()%>&page1="+page1;	
	}
	var PNpage=<%=cpage%>
	var maxpage=<%=pagecount%>
	if(maxpage==1){
		document.getElementById("pre").disabled=true;
		document.getElementById("next").disabled=true;
	}
	if(PNpage==1){
		document.getElementById("pre").disabled=true;
	}else if(PNpage==maxpage){
		document.getElementById("next").disabled=true;
		
	}
	function PreNextChange(pnpage){
		var page=pnpage.value;
		
		if(page=="上一页"){
			PNpage--;
		}else if(page=="下一页"){
			PNpage++;
		}
		
		window.location.href="/ZxMgrSys/ComplaintsServlet?action=D&Qname=<%=user.getUserName()%>&page1="+PNpage;	
	}
	function deleteComp(comid){
		var com_id=comid.id;
		window.location.href="/ZxMgrSys/ComplaintsServlet?action=B&checkbox="+com_id;
	}
</script>
</body>
</html>