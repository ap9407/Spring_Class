<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
	<p><input type="hidden" name="idx" value="${dto.idx }"></p>
	<p><input type="text" name="name" value="${dto.name }" required autofocus></p>
	<p><input type="text" name="author" value="${dto.author }" required></p>
	<p><input type="text" name="publisher" value="${dto.publisher }" required></p>
	<p><input type="date" name="publishDate" value="${dto.publishDate }" required></p>
	<p><input type="number" name="price" value="${dto.price }" required min="0" max="500000"></p>
	<p><input type="text" name="memo" value="${dto.memo }" required></p>
	<p>
		<select name="score" required>
			<option ${dto.score == '0' ? 'selected' : '' }>0</option>
			<option ${dto.score == '1' ? 'selected' : '' }>1</option>
			<option ${dto.score == '2' ? 'selected' : '' }>2</option>
			<option ${dto.score == '3' ? 'selected' : '' }>3</option>
			<option ${dto.score == '4' ? 'selected' : '' }>4</option>
			<option ${dto.score == '5' ? 'selected' : '' }>5</option>
			<option ${dto.score == '6' ? 'selected' : '' }>6</option>
			<option ${dto.score == '7' ? 'selected' : '' }>7</option>
			<option ${dto.score == '8' ? 'selected' : '' }>8</option>
			<option ${dto.score == '9' ? 'selected' : '' }>9</option>
			<option ${dto.score == '10' ? 'selected' : '' }>10</option>
		</select>
	</p>
	<p><input type="submit"></p>

</form>
</body>
</html>