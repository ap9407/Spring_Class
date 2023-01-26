<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		color: grey;
	}
	legend {
		font-size: 20px;
		font-weight: bold;
	}

	div > fieldset {
		width: 200px;
		
	}

	div#loginInfo {
		text-align: right;
		height: 25px;
	}
	
	table {
		border-collapse: collapse;
		min-width: 500px;
		margin: 0 auto;
	}
	td, th {
		border: 1px solid #ccc;
		padding: 5px 10px;
	}
	thead > tr {
		background-color: black;
		color: white;
	}
	tbody th {
		background-color: darkgray;
	}
	.sb {
		margin-top: 20px;
		display: flex;
		justify-content: space-between;
	}
	.wrap {
		width: 900px;
	}
</style>
</head>
<body>

<h1><a href="${cpath }/">게시판2</a></h1>

<nav>
	<ul>
		<li><a href="${cpath }/member/join">회원가입</a></li>
		<c:if test="${empty login }">
		<li><a href="${cpath }/member/login">로그인</a></li>
		</c:if>
		
		<c:if test="${not empty login }">
		<li><a href="${cpath }/member/logout">로그아웃</a></li>
		</c:if>
		
		<li><a href="${cpath }/board/list">게시판</a></li>
	</ul>
</nav>
<div id="loginInfo">
	<c:if test="${not empty login }">
	<h3><a href="${cpath }/member/mypage" title="마이페이지로 이동!!">${login.userid } (${login.username})</a></h3>
	</c:if>
</div>

