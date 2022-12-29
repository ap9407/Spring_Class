<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<form method="POST">
	<p><input type="hidden" name="idx" value="${dto.idx }" ></p>
	<p><input type="text" name="userid" value="${dto.userid }"></p>
	<p><input type="text" name="userpw" value="${dto.userpw }"></p>
	<p><input type="text" name="username" value="${dto.username }"></p>
	<p>
		<select name="gender" required>
			<option ${dto.gender == '남성' ? 'selected' : '' }>남성</option>
			<option ${dto.gender == '여성' ? 'selected' : '' }>여성</option>
		</select>
	</p>
	<p><input type="date" name="birth" value="${dto.birth }"></p>
	<p><input type="submit"></p>

</form>
</body>
</html>