<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<h3>로그인</h3>

<form method="POST">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required>
	<p><input type="submit" value="가입"></p>
</form>

<a href="${cpath }/member/join">회원이 아니시라면 회원가입 버튼을 눌러주세요</a>
</body>
</html>