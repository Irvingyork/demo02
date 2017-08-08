<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看来访记录</title>
</head>

<%
	List<VisitVO> visiterList=(List<VisitVO>)request.getAttribute("visiterList");
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
<form name="CheckVisitInfForm" id="CheckVisitInfForm" method="post" action="VisitServlet?action=queryVisitByButton" onsubmit="return vaildate(this)">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>来访记录信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <div style="margin-top: 70px;margin-left: 340px">
        <b>请输入查询日期：</b><input type="text" name="visitDate" id="visitDate" value="<%=selectTime%>">&nbsp&nbsp&nbsp&nbsp<input type="image" src="/ZxMgrSys/images/img111.png" value="查询" style="width: 90px;height: 29px "name="query" id="query">
    </div>
    <table style="margin-top: 30px;margin-left: 300px" border="1">
        <tr>
            <td width="90px"height="30px"align="center">
                <b>编号:</b>
            </td>
            <td width="90px"align="center">
                <b>姓名:</b>
            </td>
            <td width="200px"align="center">
                <b>电话号码:</b>
            </td>
            <td width="200px"align="center">
                <b>来访时间:</b>
            </td>
        </tr>
        <%
        if(visiterList.size()!=0){
			for(int i=0;i<visiterList.size();i++){
        %>
        <tr>
            <td width="90px"height="30px"align="center"><%=visiterList.get(i).getVisit_ID() %></td>
            <td width="90px"align="center"><%=visiterList.get(i).getVisiter_Name() %></td>
            <td width="200px"align="center"><%=visiterList.get(i).getVisit_Time() %></td>
            <td width="200px"align="center"><%=visiterList.get(i).getPhone() %></td>
        </tr>
        <%
			}
		}
	%>
    </table>
    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
           <td width="810px" align="center">
               <input type="image" id="before" value="上一页" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " onclick="onePage(this)">
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
		if(/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/.test(f.visitDate.value)||f.visitDate.value=="ALL"){
			return true;
		}else{
			f.visitDate.focus();
			f.visitDate.select();
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
		var myform=document.getElementById("CheckVisitInfForm");
		if(b.value=="上一页"){
				if(vaildate(myform)){
					selectedPage.options[index-1].selected=true;
					myform.action="VisitServlet?action=queryVisit";
					myform.submit();
				}
		}else{
				if(vaildate(myform)){
					selectedPage.options[index+1].selected=true;
					myform.action="VisitServlet?action=queryVisit";
					myform.submit();
				}
		}
	}
	
	function toSelect(s){//改变下拉列表页码
		var myform=document.getElementById("CheckVisitInfForm");
		if(vaildate(myform)){
			myform.action="VisitServlet?action=queryVisit";
			myform.submit();
		}else{
			for(var i=0;i<selectedPage.length;i++){//使页码保持一致
				if(selectedPage.options[i].value==selectPage)
					selectedPage.options[i].selected=true;
			}
		}
	}
	
</script>

</body>
</html>