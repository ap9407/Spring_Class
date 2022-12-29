<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body> 
<details>
	<summary>member5 테이블SQL</summary>
	<fieldset>
<pre>
create sequence member5_seq
    start with 1
    maxvalue 9999999
    increment by 1
    nocache
    nocycle;

create table member5 (
    idx         number          default member5_seq.nextval primary key,
    userid      varchar2(100)   unique not null,
    userpw      varchar2(100)   not null,
    username    varchar2(100)   not null,
    birth       date            not null,
    gender      varchar2(20)    check(gender in('남성', '여성'))
);

</pre>
	
	</fieldset>
</details>

<ul>
	<li><a href="${cpath }/ex01">ex01-member5 목록</a></li>
	<li><a href="${cpath }/ex02">ex02-member5 추가</a></li>
</ul>

</body>
</html>