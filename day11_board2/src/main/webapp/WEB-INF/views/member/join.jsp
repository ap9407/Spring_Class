<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>회원가입 합시다</h3>

<form method="POST">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p><input type="text" name="username" placeholder="이름" required></p>
	<p><input type="date" name="birth" required></p>
	<p>
		<label><input type="radio" name="gender" value="남성" required>남성</label>
		<label><input type="radio" name="gender" value="여성" required>여성</label>
	</p>
	<p><input type="submit" value="가입"></p>

</form>

</body>
</html>