<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主要内容</title>
    <link href="/ZxMgrSys/css/content.css">
    <link rel="stylesheet" type="text/css" href="/ZxMgrSys/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/ZxMgrSys/css/demo.css">
    <link rel="stylesheet" href="/ZxMgrSys/css/app.css">
</head>
<script>
	var msg="<%=request.getAttribute("msg")%>";
	if(msg!="null"){
		alert(msg);
	}
	
    setInterval(pic,1000);
    var array=new array("/ZxMgrSys/images/img10.png","/ZxMgrSys/images/img11.png");
    var index=0;
    function  pic() {
        var myimg=document.getElementById("cimg");
        if(array.length = index)
        {
            index=0;
        }
        else
        {
            index++;
        }
        myimg.src=array[index];
    }
</script>
<body>
<img src="../images/c01.png" width="300px" style="margin-left: 500px">
<div class="slider">

    <div class="slider-img">
        <ul class="slider-img-ul">
            <li><img src="/ZxMgrSys/images/slider4.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider2.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider3.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider1.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider5.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider4.jpg"></li>
            <li><img src="/ZxMgrSys/images/slider2.jpg"></li>
        </ul>
    </div>

</div>
<div>
<img src="../images/c02.png" width="300px" style="margin-left: 500px">
<table style="margin-left: 223px">
    <tr >
        <td width="352">
    <video width="352" height="288" controls autoplay>
        <source src="/ZxMgrSys/video/video.mp4" type="video/mp4">
        <object data="/ZxMgrSys/video/video.mp4" width="352" height="288">
            <embed width="352" height="288" src="../video/video.mp4">
        </object>
    </video>
        </td>
        <td width="553px" style="padding-left: 15px">
            <h2 style="color:#636363 ">公司简介<br></h2><h5>ABOUT US<br></h5><font color="#636363" style="font: 'Adobe 宋体 Std L'">
            致馨物流管理公司是一家面向全国的物流管理企业，总部位于天津，研发中心分别在天津和重庆，专注物业管理企业的物流管理软件设计开发和服务，是国内最菜的物业管理软件产品及解决方案供应商。致馨成立于2017年7月28日，建立以来自始至终专注于资产运营及物业管理行业信息化领域。<br></font>
        <td>
    </tr>
</table>
</div>
<script src="/ZxMgrSys/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/ZxMgrSys/js/xSlider.js"></script>
</body>
</html>