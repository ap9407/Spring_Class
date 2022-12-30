<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>

<h1>책이름 추가해보거라</h1>
<hr>

<form method="POST">
	<p><input type="text" name="name" placeholder="책이름"></p>
	<p><input type="text" name="author" placeholder="작가"></p>
	<p><input type="text" name="publisher" placeholder="출판사"></p>
	<p><input type="date" name="publishDate" placeholder="출판일자"></p>
	<p><input type="number" name="price" placeholder="가격" min="0" max="500000"></p>
	<p><input type="text" name="memo" placeholder="메모">
	<p>
		<select name="score" required>
			<option value="">== 별점(0 ~ 10 까지) ==</option>
			<option>0</option>
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</select>		
	</p>
	<p><input type="submit"></p>
</form>

</body>
</html>