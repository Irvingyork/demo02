<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登记来访记录</title>
</head>
<body>
<form name="AddVisitInfForm"  method="post" action="/ZxMgrSys/VisitServlet?action=addVisit" onsubmit="return vaildate(this)">
    <div style="margin-left: 150px">
        <label style="color: burlywood;"><h2>添加来访记录</h2></label>
    </div>
    <div style="margin-left: 100px">
        <hr width="1000px" align="left">
    </div>
    <table style="margin-top: 10px;margin-left: 300px">
        <tr>
            <td height="76px">
                <b>姓 &nbsp&nbsp&nbsp&nbsp 名:</b>
            </td>
            <td>
                <input type="text" id="userName" name="userName"/>
            </td>
        </tr>
        <tr>
            <td height="76px">
                <b>手 &nbsp机&nbsp号:</b>
            </td>
            <td>
                <input type="text" id="phone" name="phone"/>
            </td>
        </tr>
    </table>
 <table style="margin-top: 30px">
        <tr>
             <td width="850px" align="center">
                <input type="image" src="/ZxMgrSys/images/img118.png" value="修改" style="width: 90px;height: 29px ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" value="重置" src="/ZxMgrSys/images/img112.png" style="width: 90px;height: 29px "onclick="this.form.reset();return false;">
            </td>
        </tr>
    </table>
</form>

<script type="text/javascript">
	var msg="<%=request.getAttribute("msg")%>";
	if(msg!="null"){
		alert(msg);
	}
	
	function vaildate(f){
		if(!/^[\u4e00-\u9fa5]{2,5}$/.test(f.userName.value)){
			f.userName.focus();
			f.userName.select();
			alert("姓名应为长度为2~5的中文汉字");
			return false;
		}else if(!/^1(3|4|5|7|8)\d{9}$/.test(f.phone.value)){
			f.phone.focus();
			f.phone.select();
			alert("手机号码格式错误");
			return false;
		}else{
			return true;
		}
	}
</script>

</body>
</html>