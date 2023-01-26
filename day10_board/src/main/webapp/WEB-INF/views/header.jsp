<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3 style="text-align: center">게시판 임니다</h3>

<nav>
	<ul>
		<li><a href="${cpath }/member/login">로그인</a></li>
		<li><a href="${cpath }/board/list">게시판</a>
	</ul>
</nav>
