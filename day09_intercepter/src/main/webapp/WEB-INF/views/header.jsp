<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day09</title>
<style>
	a{
		text-decoration: none;
		color:inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	ul {
		margin: 0;
		padding: 0;
		display: flex;
		list-style: none;
		width: 900px;
	}
	ul > li {
		padding: 10px 20px;
	}
	#login {
		height:70px;
		text-align: right;
	}
	table {
		border-collapse: collapse;
		width: 600px;
		height: 250px;
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
	form > fieldset {
		width: 250px;
	}
	legend {
		font-size: 20px;
		font-weight: bold;
	}
	form p {
		display: flex;
		justify-content: space-between;
		margin-right: 30px;
		width: 250px;
	}
	form p > input[type="text"],
	form p > input[type="number"],
	form p > select {
		width: 150px;
	}
	
	.man {
		color: blue;
	}
	.women {
		color: red;
	}
	.scrolltable {
		display: block;
		overflow: auto;
		margin: 0 0;
		padding: 0 0;
	}
	.header {
		display: flex;
		justify-content: space-between;
	}
	
</style>


</head>
<body>
<div class="header">
	<h1><a href="${cpath }/">day09</a></h1>
	
	<div id="login">
		<c:if test="${not empty login }">
			<h3>${login.userid } (${login.username })</h3>
			<c:set var="loginURL" value="logout" />
			<c:set var="loginMenu" value="로그아웃" />
		</c:if>
		<c:if test="${empty login }">
			<c:set var="loginURL" value="login" />
			<c:set var="loginMenu" value="로그인" />
		</c:if>
			
	</div>
	
	<ul>
		<li><a href="${cpath }/join">회원가입</a></li>
		<li><a href="${cpath }/${loginURL}">${loginMenu }</a></li>
		<li><a href="${cpath }/board">게시판</a></li>
	</ul>
</div>
