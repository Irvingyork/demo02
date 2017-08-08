<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List" import="com.neusoft.zxmgrsys.common.domain.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>需用车位</title>
</head>
<body>
<%
	List<ParkVO> list = (List<ParkVO>)request.getAttribute("parkList");
 %>
 <script>
	function orderPark(i)
	{
		var parkPos = document.getElementById("parkPos").innerHTML;
		var rentMonth = document.getElementById("rentMonth"+i).value;
		window.location.href="RoomServlet?action=2&rentmonth=" + rentMonth + "&parkPos=" + parkPos;
	}
	
	function lastPage()
	{
		var page=<%=request.getAttribute("page")%>;
		page--;
		window.location.href="RoomServlet?action=1&page="+page;
	}
	
	function nextPage()
	{
		var page=<%=request.getAttribute("page")%>;
		page++;
		window.location.href="RoomServlet?action=1&page="+page;
	}
	
	function lastPageDisabled()
	{
		document.getElementById("lastpage").disabled = true;
	}
	
	function nextPageDisabled()
	{
		document.getElementById("nextpage").disabled = true;
	}
	
</script>
<form name="ParkingSpaceForm" action="RoomServlet?action=1" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>租用车位</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table  style="margin-top: 50px;margin-left: 300px;" border="2px">
        <tr>
            <td height="50px"width="60px"align="center">
                <b>序&nbsp&nbsp列</b>
            </td>
            <td width="100px" align="center">
                <b>停车位置</b>
            </td>
            <td width="100px" align="center">
                <b>租用状态</b></br>
            </td>
            <td width="120px"align="center">
                <b>车位单价（月）</b>
            </td>
            <td width="100px"align="center">
                <b>租用时间（月份）</b>
            </td>
            <td width="100px" align="center">
                <b>租用车位</b>
            </td>
        </tr>
        <%
        	for(int i = 0;i < list.size();i++)
        	{
        		ParkVO park = list.get(i);
         %>
        <tr>
            <td height="50px">
				<%=park.getParkID() %>
            </td>
            <td  id="parkPos">
				<%=park.getPark_Pos() %>
            </td>
            <td>
				<%=park.getPark_Status() %>
            </td>
            <td>
				<%=park.getPark_Price() %>
            </td>
            <td align="center">
                <select name="rentMonth" id="rentMonth<%=i %>">
                <option id="rentMonth" value="3">3</option>
                <option id="rentMonth" value="6">6</option>
                <option id="rentMonth" value="9">9</option>
                <option id="rentMonth" value="12">12</option>
                </select>
            </td>
            <td align="center">
                <input type="button" value="租用" style="background-color:lightsteelblue;width: 60px;height: 25px " onclick="orderPark(<%=i%>)">
            </td>
        </tr>
        <%} %>
    </table>

    <table style="margin-top: 30px;margin-left: 380px">
        <tr>
            <td width="810px" align="center">
  <input type="image" src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px " value="上一页" ${requestScope.page==1? 'disabled':''} onclick="lastPage();return false" >
            	
                &nbsp;&nbsp;
                <select  name="page" onchange=this.form.submit() id="pageSize">
                <c:forEach begin="1" end="${requestScope.parkPageCount}" var="p">
                    <option value="${p}" ${requestScope.page == p ? 'selected' : ''}>
                        第${p}页
                    </option>
                    </c:forEach>
                </select>
                &nbsp;&nbsp;
 <input type="image" src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px " value="下一页" ${requestScope.page==requestScope.parkPageCount? 'disabled':''} onclick="nextPage();return false">
            </td>
        </tr>
    </table>
 
</form>
</body>
</html>