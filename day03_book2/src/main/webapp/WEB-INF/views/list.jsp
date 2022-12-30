<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
	<p>제목검색 : <input type="text" name="search">
	<input type="submit"></p>
</form>

<h1>테이블 목록임!</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>책이름</th>
			<th>작가</th>
			<th>출판사</th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td><a href="${cpath }/detail?idx=${dto.idx }">${dto.name }</a></td>
				<td>${dto.author }</td>
				<td>${dto.publisher }</td>
				<td><a href="${cpath }/modify?idx=${dto.idx }"><button>수정</button></a></td>
				<td><a href="${cpath }/delete?idx=${dto.idx }"><button>삭제</button></a></td>
			</tr>
		</c:forEach>
	</tbody>
	
</table>

</body>
</html>