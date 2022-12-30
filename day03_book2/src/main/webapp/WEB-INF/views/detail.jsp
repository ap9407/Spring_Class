<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<p>책이름 : ${dto.name }</p>	
<p>저자 : ${dto.author }</p>
<p>출판사 : ${dto.publisher }</p>
<p>출판일자 : ${dto.publishDate }</p>
<p>가격 : ${dto.price }</p>
<p>메모 : ${dto.memo }</p>
<p>평점 : ${dto.score }</p>
<p><a href="${cpath }/list"><button>돌아가기</button></a></p>

</body>
</html>