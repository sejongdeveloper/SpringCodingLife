<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<table>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>조회수</th>
	<th>등록일</th>
</tr>
<c:forEach var="boardDTO" items="${boardSelectList}">
<tr>
	<td>${boardDTO.bno}</td>
	<td>
		<a href="${path}/boardSelectOne?bno=${boardDTO.bno}">
			${boardDTO.title}
		</a>
	</td>
	<td>${boardDTO.views}</td>
	<td>${boardDTO.insertDate}</td>
</tr>
</c:forEach>
</table>
<c:if test="${pageMaker.prev}">
	<a href="${path}/?curPage=${pageMaker.startBlock - 1}">prev</a>
</c:if>
<c:forEach begin="${pageMaker.startBlock}" end="${pageMaker.endBlock}" var="item">
	<a href="${path}/?curPage=${item}">
		${item}
	</a>
</c:forEach>
<c:if test="${pageMaker.next}">
	<a href="${path}/?curPage=${pageMaker.endBlock + 1}">next</a>
</c:if>
<br>
<a href="${path}/boardInsert">글쓰기</a>
</body>
</html>
