<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.neusoft.zxmgrsys.common.domain.*"
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
	List<NoticeVO> list=(List<NoticeVO> )request.getAttribute("list");
	int maxpage=(int)session.getAttribute("maxpage");
	
			
%>
<meta charset="UTF-8">
<title>公告</title>
<link href="./css/userindex.css" rel="stylesheet" type="text/css">

</head>
<body>
	<form name="NoticeForm">
		<div id="notice1">
			<table>
				<tr>
					<td width="200px" height="100px"></td>
					<td width="800px" height="100px"></td>
				</tr>
				<tr>
					<td width="200px" height="100px"></td>
					<%
						if (list != null) {
							
					%>

					<td><textarea id="content" id=""
							style="width: 600px; height: 300px; border: 0px; background-color: #FFFFD9;color:black;font-size:30px">
              <%=list.get(0).getContent() %>
            </textarea></td>
					<%
						}
						
					%>

				</tr>
				<tr>
					<td></td>
					<td align="center" height="50px"><input type="button" id="pre"
						value="上一个" name="pre" onClick="Changepage(this)"
						style="background-color: antiquewhite; float: left">&nbsp&nbsp&nbsp&nbsp&nbsp<input
						type="button" id="next" value="下一个" name="next"
						onClick="Changepage(this)" style="background-color: antiquewhite"></td>
				</tr>
			</table>
		</div>
	</form>
	<script>
	var cpage=<%=request.getAttribute("cpage")%>;
	var maxpage=<%=maxpage%>;
	if(maxpage==1){
		document.getElementById("next").disabled=true;
		document.getElementById("pre").disabled=true;
	}
	if(cpage==maxpage){
		document.getElementById("pre").disabled=true;
	}else if(cpage==1){
		document.getElementById("next").disabled=true;
	}
		function Changepage(page) {
			var noticepage = page.value;
			if (noticepage == "上一个") {
				cpage++;
				window.location.href="NoticeMgrServlet?action=changepage&cpage="+cpage;
			} else if (noticepage == "下一个") {		
				cpage--;
				window.location.href="NoticeMgrServlet?action=changepage&cpage="+cpage;	
			}

		}
	</script>
</body>
</html>