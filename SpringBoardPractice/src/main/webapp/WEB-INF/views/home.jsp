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
<c:forEach begin="${pageMaker.startBlock}" end="${pageMaker.endBlock}" var="item">
	<a href="${path}/?curPage=${itme}">
		${item}
	</a>
</c:forEach>
</body>
</html>
