<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style>
	.item {
		border: 1px solid black;
		padding: 10px;
		margin: 10px 0;
	}
</style>
</head>
<body>

<h1>home.jsp</h1>
<hr>

<ul>
	<li><a href='ex01'>ex01 - 부산 명소정보</a>
	<li><a href='ex02'>ex02 - 부산 축제정보</a>
	<li><a href='ex03'>ex03 - 중기 기온조회</a>
</ul>



</body>
</html>