<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>顶部</title>
    <link href="../css/oacss.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#F5F5F5">
<%UserVO user = (UserVO)session.getAttribute("user"); %>
<div id="logo" align="center">
    <img src="../images/logo.png" align="center">
</div>
    <div id="tcontent">
        <ul>
            <li>
                <a href="index.jsp" target="_parent"><img src="../images/img47.png"width="100px"height="30px"></a>
            </li>
            <li><a href="AddUserInf.jsp" target="security"><img src="../images/img52.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="AddUserInf.jsp" target="security">增加员工信息</a></li>
                    <li><a href="<%=request.getContextPath()%>/OfficeServlet?action=4" target="security">查看用户信息</a></li>
                    <li><a href="UpdatePassword.jsp" target="security">修改用户密码</a></li>
                    <li><a href="<%=request.getContextPath()%>/OfficeServlet?action=9" target="security">查看班表</a></li>
                </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/RoomServlet?action=3" target="security"><img src="../images/img53.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                   <li><a href="<%=request.getContextPath()%>/RoomServlet?action=3" target="security">查看房间信息</a></li>
                    <li><a href="<%=request.getContextPath()%>/RoomServlet?action=5" target="security">查看空房信息</a></li>
                </ul>
            </li>
            <li><a href="SetWEfee.jsp" target="security"><img src="../images/img55.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="SetWEfee.jsp" target="security">设置水电费</a></li>
                    <li><a href="../PaymentServlet?action=6" target="security">查看缴费记录</a></li>
                </ul>
            </li>
            <li><a href="AddNotice.jsp" target="security"><img src="../images/img56.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="AddNotice.jsp" target="security">添加公告信息</a></li>
                    <li><a href="../NoticeMgrServlet?action=show" target="security">查看公告信息</a></li>
                </ul>
            </li>
            <li><a href="../ParkMgrServlet?action=listpark" target="security"><img src="../images/img57.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="../ParkMgrServlet?action=listpark" target="security">查看车位信息</a></li>
                    <li><a href="SetParkingFee.jsp" target="security">设置车位价格</a></li>
                    <li><a href="../ParkMgrServlet?action=list" target="security">租车申请审批</a></li>
                </ul>
            </li>

                       <li><a href="/ZxMgrSys/ComplaintsServlet?action=firstComplaints" target="security"><img src="../images/img58.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="/ZxMgrSys/ComplaintsServlet?action=firstComplaints" target="security">查看投诉信息</a></li>
                </ul>
            </li>
            <li><a href="/ZxMgrSys/RepairServlet?action=firstRepair" target="security"><img src="../images/img59.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="/ZxMgrSys/RepairServlet?action=firstRepair" target="security">查看维修信息</a></li>
                </ul>
            </li>
        </ul>
         <div style="float: right;margin-right: 30px">
            <a href="/ZxMgrSys/LogoutServlet" target="_parent">退出</a>
        </div>
         <div style="float: right;margin-right: 70px">
         欢迎你,<%=user.getRealName() %>
         </div>
    </div>
<SCRIPT type=text/javascript>
    function menuFix() {
        var sfEls = document.getElementById("tcontent").getElementsByTagName("li");
        for (var i=0; i<sfEls.length; i++) {
            sfEls[i].onmouseover=function() {
                this.className+=(this.className.length>0? " ": "") + "sfhover";
            }
            sfEls[i].onMouseDown=function() {
                this.className+=(this.className.length>0? " ": "") + "sfhover";
            }
            sfEls[i].onMouseUp=function() {
                this.className+=(this.className.length>0? " ": "") + "sfhover";
            }
            sfEls[i].onmouseout=function() {
                this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"),
                    "");
            }
        }
    }
    window.onload=menuFix;
</SCRIPT>
</body>
</html>