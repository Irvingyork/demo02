<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.List" import="com.neusoft.zxmgrsys.common.domain.UserVO"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
</head>
<body>
<script>
function minuspage(){
	var page=<%=request.getAttribute("page")%>;
	page--;
	window.location.href="OfficeServlet?action=4&page="+page;
	}


function addpage(){
	var page=<%=request.getAttribute("page")%>;
	page++;
	window.location.href="OfficeServlet?action=4&page="+page;
}

</script>
<form name="OAUserInfForm" action="<%=request.getContextPath()%>/OfficeServlet?action=4" method="post">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>查看用户信息</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
 <!--    <div style="margin-top: 70px;margin-left: 340px">
        <b>请输入查询用户名：</b><input type="text" name="userNameForFind">&nbsp&nbsp&nbsp&nbsp<input type="submit" value="查询">
    </div> --> 
<table style="margin-top: 50px;margin-left: 200px" border="1">
    <tr>
        <td height="50px"align="center"width="80">
            <b>用户名:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>真实姓名:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>电话号码:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>邮件地址:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>身份证号:</b>
        </td>
        <td height="50px"width="100" align="center">
            <b>房间号:</b>
        </td>
        <td width="100" align="center">
            <b>停车位置</b>
        </td>
        <td width="100" align="center">
            <b>权 限</b>
        </td>
        <td width="300" align="center">
            <b>操 作</b>
        </td>
    </tr>
    <%
   List<UserVO> userlist=  null;
  userlist=(List)request.getAttribute("userlist");
  if(userlist!=null){
	  for(int i=0;i<userlist.size();i++){
		UserVO user=userlist.get(i);
  %>
    <tr>
        <td height="50px"align="center"width="100"><%=user.getUserName()%>
        </td>
        <td height="50px"width="100" align="center"><%=user.getRealName() %>
        </td>
        <td height="50px"width="100" align="center"><%=user.getPhone() %>
        </td>
        <td height="50px"width="100" align="center"><%=user.getEmail()%>
        </td>
        <td height="50px"width="100" align="center"><%=user.getId_Number()%>
        </td>
        <td height="50px"width="100" align="center"><%=user.getRoom_Number()%>
        </td>
        <td height="50px" width="100" align="center"><%=user.getPark_Pos()%>
        </td>
        <td height="50px" width="100" align="center"><%=user.getPower()%>
        </td>
        <td width="100" align="center">
            <input type="button" value="修改" onclick="window.location.href='<%=request.getContextPath()%>/OfficeServlet?action=8&username=<%=user.getUserName()%>'" style="background-color:lightsteelblue;width: 70px;height: 25px ">
            <%if(user.getPower()!=1){ %>
            <input type="button" value="排班" onclick="window.location.href='<%=request.getContextPath()%>/OfficeAdmin/ArrangeSchedual.jsp?username=<%=user.getUserName()%>'" style="background-color:lightsteelblue;width: 70px;height: 25px ">
            <input type="button" value="删除" onclick="window.location.href='<%=request.getContextPath()%>/OfficeServlet?action=2&username=<%=user.getUserName()%>'" style="background-color:lightsteelblue;width: 70px;height: 25px ">
           <%} %>
        </td>
    </tr>
    <%}} %>
</table>
    <table style="margin-top: 30px;margin-left: 700px">
        <tr>
            <td width="810px" align="center">
                 <c:if test="${ requestScope.page!=1 }">
                <input type="image" src="../images/img116.png" style="width: 90px;height: 29px " value="上一页" onclick="minuspage()">
                </c:if>
                &nbsp;&nbsp;
                <c:if test="${ requestScope.page!=1 }">
                <select  name="page" onchange=this.form.submit() id="pageSize">
                <c:forEach begin="1" end="${requestScope.pageCount}" var="p">
                    <option value="${p}" ${requestScope.page == p ? 'selected' : ''}>
                        第${p}页
                    </option>
                    </c:forEach>
                </select>
                </c:if>
                &nbsp;&nbsp;
               <c:if test="${ requestScope.page!=requestScope.pageCount }">
                <input type="image" src="../images/img117.png" style="width: 90px;height: 29px " value="下一页" onclick="addpage()">
                  </c:if>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>