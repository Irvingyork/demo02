<%@ page language="java" contentType="text/html; charset=UTF-8"
     import = "java.util.List" import="com.neusoft.zxmgrsys.common.domain.RoomVO" pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>房屋信息</title>
</head>
<body>
<script>
function minuspage(){
	var page=<%=request.getAttribute("page")%>;
	page--;
	window.location.href="RoomServlet?action=3&page="+page;
	}


function addpage(){
	var page=<%=request.getAttribute("page")%>;
	page++;
	window.location.href="RoomServlet?action=3&page="+page;
}

</script>
<form action="<%=request.getContextPath()%>/RoomServlet?action=3" method="post">
<div style="margin-left: 150px">
    <label style="color: burlywood;"><h2>查看房间信息</h2></label>
</div>
<div style="margin-left: 100px">
    <hr width="1000px" align="left">
</div>
<!--     <div style="margin-top: 70px;margin-left: 340px">
    <b>请输入查询房间号：</b><input type="text" name="roomNumber">&nbsp&nbsp&nbsp&nbsp<input type="button" onclick="window.location.href='<%=request.getContextPath()%>/RoomServlet?action=7&roomNumber'" value="查询">
</div> -->
<table style="margin-top: 50px;margin-left: 100px" border="1">
    <tr>
        <td height="50px" width="80" align="center">
            <b>房间号:</b>
        </td>
        <td height="50px" width="100px"align="center">
            <b>房间类型:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间面积:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间设施:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间状态:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>当前电量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>上月电量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>当月用水量:</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>上月用水量:</b>
        </td>
        <td height="50px" width="100px" align="center">
            <b>水 费 :</b>
        </td>
        <td height="50px" width="100px" align="center">
            <b>电 费 :</b>
        </td>
        <td height="50px"  width="100px"align="center">
            <b>房间租费:</b>
        </td>
        <td height="50px"  width="200px"align="center" >
            <b>操作:</b>
        </td>
    </tr>
  <%
   List<RoomVO> roomlist=  null;
  roomlist=(List)request.getAttribute("roomlist");
  if(roomlist!=null){
	  for(int i=0;i<roomlist.size();i++){
		RoomVO room=roomlist.get(i);
  %>
    <tr>
        <td height="50px" width="60" align="center"><%=room.getRoom_Number() %>
        </td>
        <td height="50px" width="80" align="center"><%=room.getRoom_Style() %>
        </td>
        <td height="50px" width="100px"align="center"><%=room.getRoom_Area() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getGoods_status() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getRent_status() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getCur_Elec() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getLast_Elec() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getCur_Water() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getLast_Water() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getElec_Price() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getWater_Price() %>
        </td>
        <td height="50px"  width="100px"align="center"><%=room.getRoom_Price() %>
        </td>
        <td>
        <%if(room.getRent_status()==1){ %>
           <input type="button" onclick="window.location.href='<%=request.getContextPath()%>/OfficeServlet?action=13&roomnum=<%=room.getRoom_Number()%>'" value="办理退房" style="background-color:lightsteelblue;width: 70px;height: 25px ">
           <%} %>
           <input type="button" onclick="window.location.href='<%=request.getContextPath()%>/RoomServlet?action=7&roomnum=<%=room.getRoom_Number()%>'" value="修改" style="background-color:lightsteelblue;width: 70px;height: 25px ">
        </td>
    </tr>
    <%}
	  } %>
</table>
    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
            <td width="810px" align="center">
             
                <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " value="上一页" ${requestScope.page==1? 'disabled':''} onclick="minuspage();return false" >
                
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
                  
            </td>
        </tr>
    </table>
</form>
</body>
</html>