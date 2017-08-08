<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.List" import="com.neusoft.zxmgrsys.common.domain.SchedulingVO"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>查看排班信息</title>
</head>
<body>
<script>
function minuspage(){
	var page=<%=request.getAttribute("page")%>;
	page--;
	window.location.href="OfficeServlet?action=9&page="+page;
	}


function addpage(){
	var page=<%=request.getAttribute("page")%>;
	page++;
	window.location.href="OfficeServlet?action=9&page="+page;
}

</script>

<form name="CheckComplainForm" action="<%=request.getContextPath()%>/OfficeServlet?action=9" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看排班信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
<!--      <div style="margin-top: 70px;margin-left: 340px">
        <b>请输入日期：</b><input type="text">&nbsp&nbsp&nbsp&nbsp<input type="submit" value="查询">
    </div> -->
    <table style="margin-top: 30px;margin-left: 300px" border="1">
        <tr>
            <td width="150px"align="center">
                <b>姓名:</b>
            </td>
            <td width="150px"align="center">
                <b>工作内容:</b>
            </td>
            <td width="150px"align="center">
                <b>工作时间:</b>
            </td>
            <td width="150px"align="center">
                <b>操作:</b>
            </td>
        </tr>
         <%
   List<SchedulingVO> schelist=  null;
  schelist=(List)request.getAttribute("schelist");
  if(schelist!=null){
	  for(int i=0;i<schelist.size();i++){
		  SchedulingVO scheduling=schelist.get(i);
  %>
        <tr>
            <td width="150px"align="center"><%=scheduling.getUserName() %>

            </td>
            <td width="150px"align="center"><%=scheduling.getContent() %>

            </td>
            <td width="150px"align="center"><%=scheduling.getWork_Time() %>
            </td>
            <td width="150px"align="center">
                <input type="button" style="background-color:lightsteelblue;width: 62px;height: 31px " onclick="window.location.href='<%=request.getContextPath()%>/OfficeServlet?action=10&scheid=<%=scheduling.getScheID()%>'" value="修改">
                <input type="button" style="background-color:lightsteelblue;width: 62px;height: 31px " onclick="window.location.href='<%=request.getContextPath()%>/OfficeServlet?action=12&scheid=<%=scheduling.getScheID()%>'" value="删除">
            
            </td>
            
        </tr>
        <%}} %>
    </table>
    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
            <td width="810px" align="center">
                 <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " value="上一页" ${requestScope.page==1? 'disabled':''} onclick="minuspage();return false">
                
                &nbsp;&nbsp;
                <select  name="page" onchange=this.form.submit() id="pageSize">
                <c:forEach begin="1" end="${requestScope.pageCount}" var="p">
                    <option value="${p}" ${requestScope.page == p ? 'selected' : ''}>
                        第${p}页
                    </option>
                    </c:forEach>
                </select>
                &nbsp;&nbsp;
               
                <input type="image" src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px " value="下一页" ${requestScope.page==requestScope.pageCount? 'disabled':''} onclick="addpage();return false">
            <input type="image" src="/ZxMgrSys/images/img122.png" style="width: 90px;height: 29px " value="导出Excel" onclick="toExcel();return false">
            </td>
        </tr>
    </table>
</form>

<script type="text/javascript">
	function toExcel(){
		var length="<%=schelist.size()%>";
		if(length==0){
			alert("无信息可导出");
		}else{
			window.location.href="OfficeServlet?action=14";
		}
	}
</script>

</body>
</html>