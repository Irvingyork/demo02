<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户主页面</title>
</head>
<body style="margin: 0px;padding: 0px">
<framest name="iframe">
    <iframe src="top.jsp" id="tframe" width="100%"height="190" style="border: 0px; "  scrolling="no" frameborder="0" marginheight="0px" > </iframe>
    <iframe src="center.jsp" id="cframe"  width="100%" height="950px" style="border: 0px;" scrolling="no" marginheight="0px" name="cframe"></iframe>
<iframe src="bottom.jsp" width="100%" height="50px" style="border: 0px;background-color: silver" marginheight="0px"></iframe>
</framest>
</body>
</html>