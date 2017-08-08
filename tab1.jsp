<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${pb.pc eq null or pb.pc eq 1 }"><img src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px "></img></c:when>
		<c:otherwise>
			<a href="${pb.url }&pc=${pb.pc-1}"><img src="/ZxMgrSys/images/img116.png" style="width: 90px;height: 29px "></img></a>
		</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${pb.tp <6}">
			<c:set value="1" var="begin"></c:set>
			<c:set value="${pb.tp }" var="end"></c:set>
		</c:when>

		<c:otherwise>
			<c:set value="${pb.pc-2}" var="begin"></c:set>
			<c:set value="${pb.pc+3}" var="end"></c:set>

			<c:if test="${pb.pc<3 }">
				<c:set value="1" var="begin"></c:set>
				<c:set value="6" var="end"></c:set>
			</c:if>

			<c:if test="${pb.pc+3>pb.tp }">
				<c:set value="${pb.tp-5 }" var="begin"></c:set>
				<c:set value="${pb.tp }" var="end"></c:set>
			</c:if>
		</c:otherwise>
	</c:choose>

	<c:forEach begin="${begin }" end="${end }" var="page">
		<c:choose>
			<c:when test="${pb.pc eq page or pb.pc eq null}">${page }</c:when>
			<c:otherwise>
				<a href="${pb.url }&pc=${page }">${page }</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<c:choose>
		<c:when test="${pb.pc eq pb.tp or pb.pc eq null }"><img src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px "></img></c:when>
		<c:otherwise>
			<a href="${pb.url }&pc=${pb.pc+1}"><img src="/ZxMgrSys/images/img117.png" style="width: 90px;height: 29px "></img></a>
		</c:otherwise>
	</c:choose>
</body>
</html>