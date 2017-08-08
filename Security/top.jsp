<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>顶部</title>
    <link href="../css/userindex.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#f5f5f5">
<%UserVO user = (UserVO)session.getAttribute("user"); %>
<div id="logo" align="center">
    <img src="../images/logo.png" align="center">
</div>
    <div id="tcontent">
        <ul>
            <li>
                <a href="index.jsp" target="_parent"> <img src="../images/img47.png"width="100px"height="30px"></a>
            </li>
            <li><a href="UserInf.jsp" target="security"><img src="../images/img41.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="UserInf.jsp" target="security">查看个人信息</a></li>
                    <li><a href="UpdateUserInf.jsp" target="security">修改个人信息</a></li>
                    <li><a href="UpdatePassword.jsp" target="security">修改个人密码</a></li>
                </ul>
            </li>
           <li><a href="AddVisitInf.jsp" target="security"><img src="../images/img51.png"width="100px"height="30px"></a>
                <ul style="background-color: #F3F3F3">
                    <li><a href="AddVisitInf.jsp" target="security">来访登记</a></li>
                    <li><a href="/ZxMgrSys/VisitServlet?action=firstVisit" target="security">查看来访记录</a></li>
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