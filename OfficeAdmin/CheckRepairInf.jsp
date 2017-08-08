<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看维修信息</title>
</head>

<%
	List<RepairVO> repairList=(List<RepairVO>)request.getAttribute("repairList");
	int pageCount=(int)request.getAttribute("pageCount");
	String selectTime;
	int selectPage;
	
	if(request.getAttribute("selectTime")!=null){
		selectTime=(String)request.getAttribute("selectTime");
	}else{
		selectTime="ALL";
	}
	
	if(request.getAttribute("selectPage")!=null){
		selectPage=(int)request.getAttribute("selectPage");
	}else{
		selectPage=1;
	}
%>

<body>
<form name="CheckComplainForm" id="CheckComplainForm" method="post" action="RepairServlet?action=queryRepairByButton" onsubmit="return vaildate(this)">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看维修信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <div style="margin-top: 70px;margin-left: 340px">
        <b>请输查询入日期：</b><input type="text" name="repairDate" id="repairDate" value="<%=selectTime%>">&nbsp&nbsp&nbsp&nbsp<input  type="image" src="/ZxMgrSys/images/img111.png" style="width: 90px;height: 29px " name="query" id="query" value="查询">
    </div>
    <table style="margin-top: 30px;margin-left: 230px" border="1">
        <tr>
            <td width="70px"height="30px"align="center">
                <b>编号:</b>
            </td>
            <td width="90px"align="center">
                <b>房间号:</b>
            </td>
            <td width="90px"align="center">
                <b>用户名:</b>
            </td>
            <td width="200px"align="center">
                <b>维修内容:</b>
            </td>
            <td width="150px"align="center">
                <b>报修时间:</b>
            </td>
            <td width="150px"align="center">
                <b>处理时间:</b>
            </td>
            <td width="100px"align="center">
                <b>操作:</b>
            </td>
        </tr>
         <%
		if(repairList.size()!=0){
			for(int i=0;i<repairList.size();i++){
		%>
        <tr>
            <td width="70px"height="30px"align="center"><%=repairList.get(i).getRepair_ID() %></td>
            <td width="90px"align="center"><%=repairList.get(i).getRoom_Number() %></td>
            <td width="90px"align="center"><%=repairList.get(i).getUserName() %></td>
            <td width="200px"align="center"><%=repairList.get(i).getContent() %></td>
            <td width="150px"align="center"><%=repairList.get(i).getStart_Time() %></td>
         <%
				if(repairList.get(i).getEnd_Time()!=null){
		 %>
		 			<td width="150px"align="center"><%=repairList.get(i).getEnd_Time() %></td>
		 			<td width="100px"align="center">已处理</td>
		 <%
				}else{
		 %>
            		<td width="150px"align="center">未处理</td>
            		<td width="100px"align="center"><input type="button" id="<%=repairList.get(i).getRepair_ID() %>" value="确认处理" onclick="deal(this)" style="background-color:lightsteelblue;width: 79px;height: 34px "></td>
         <%
				}
		 %>
        </tr>
        <%
			}
		}
		%>
    </table>
    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
            <td width="810px" align="center">
                <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " id="before" value="上一页"  onclick="onePage(this)">
                &nbsp;&nbsp;
                <select id="selectPage" name="selectPage" onchange="toSelect(this)">
                </select>
                &nbsp;&nbsp;
                <input type="image" id="behind" value="下一页" src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px " onclick="onePage(this)">

            </td>
        </tr>
    </table>
</form>

<script type="text/javascript">
	function vaildate(f){
		if(/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/.test(f.repairDate.value)||f.repairDate.value=="ALL"){
			return true;
		}else{
			f.repairDate.focus();
			f.repairDate.select();
			alert("日期格式为YYYY-MM-DD,也可输入ALL查询全部记录");
			return false;
		}
	}
</script>


<script type="text/javascript">
	var selectedPage=document.getElementById("selectPage");
	var pageCount="<%=pageCount%>";
	for(var i=0;i<pageCount;i++){//生成下拉列表选项
		var pageOption=document.createElement('option');
		pageOption.value=(i+1);
		pageOption.text="第"+(i+1)+"页";
		selectedPage.options.add(pageOption);
	}
	
	var selectPage="<%=selectPage%>";
	for(var i=0;i<selectedPage.length;i++){//保留上次页码选择
		if(selectedPage.options[i].value==selectPage)
			selectedPage.options[i].selected=true;
	}
	
	var index=selectedPage.selectedIndex;
	//跳页按钮是否可用
	if(pageCount==0){//查询无值，没有页数
		document.getElementById("before").disabled=true;
		document.getElementById("behind").disabled=true;
	}else{
		if(index==0){//第一页
			document.getElementById("before").disabled=true;
		}
		if(index==(pageCount-1)){//最后一页
			document.getElementById("behind").disabled=true;
		}
	}
	
	
	function onePage(b){//单击按钮跳转一页
		var myform=document.getElementById("CheckComplainForm");
		if(b.value=="上一页"){
				if(vaildate(myform)){
					selectedPage.options[index-1].selected=true;
					myform.action="RepairServlet?action=queryRepair";
					myform.submit();
				}
		}else{
				if(vaildate(myform)){
					selectedPage.options[index+1].selected=true;
					myform.action="RepairServlet?action=queryRepair";
					myform.submit();
				}
		}
	}
	
	function toSelect(s){//改变下拉列表页码
		var myform=document.getElementById("CheckComplainForm");
		if(vaildate(myform)){
			myform.action="RepairServlet?action=queryRepair";
			myform.submit();
		}else{
			for(var i=0;i<selectedPage.length;i++){//使页码保持一致
				if(selectedPage.options[i].value==selectPage)
					selectedPage.options[i].selected=true;
			}
		}
	}
	
	function deal(b){
		var myform=document.getElementById("CheckComplainForm");
		if(vaildate(myform)){
			myform.action="MailServlet?action=dealRepair&repair_ID="+b.id;
			myform.submit();
		}
	}
	
</script>

</body>
</html>