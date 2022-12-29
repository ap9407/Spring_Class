<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>

<h1>추가해보자</h1>
<hr>

<form method="POST">
	<p><input type="text" name="userid" placeholder="아이디"></p>
	<p><input type="text" name="userpw" placeholder="비밀번호"></p>
	<p><input type="text" name="username" placeholder="이름"></p>
	<p><input type="date" name="birth" placeholder="생년월일"></p>
	<p>
		<select name="gender" required>
			<option value="">== 성별 ==</option>
			<option>남성</option>
			<option>여성</option>
		</select>
	</p>
	
	<p><input type="submit"></p>
</form>
</body>
</html>