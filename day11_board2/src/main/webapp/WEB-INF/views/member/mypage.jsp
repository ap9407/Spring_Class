<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>내정보</h3>

<div>
	<table>
		<thead>
			<tr>
				<th colspan="2">${login.username }님의 정보</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>회원ID</td>
				<td>${login.userid }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${login.username }</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>${login.birth }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${login.gender }</td>
			</tr>
		</tbody>
	</table>
	<div class="sb">
		<div>
			<a href="${cpath }/member/modify"><button>수정</button></a>
		</div>
		<div>
			<button id="withdraw">탈퇴</button>
		</div>
	</div>
</div>

<script>
	const withdraw = document.getElementById('withdraw')
	withdraw.onclick = function(event) {
		const promptText = '정말 탈퇴하시겠습니까?\n탈퇴를 원하시면 [지금탈퇴] 라고 입력하세요'
		const inputText = prompt(promptText)
		
		if(inputText == '지금탈퇴') {
			location.href = '${cpath}/member/withdraw'
		}
	}
</script>

</body>
</html>