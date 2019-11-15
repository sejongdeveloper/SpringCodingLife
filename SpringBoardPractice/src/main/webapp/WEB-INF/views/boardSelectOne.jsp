<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
번호 : ${boardDTO.bno}
조회수 : ${boardDTO.views}
작성자 : ${boardDTO.writer}
제목 : ${boardDTO.title}
내용 : ${boardDTO.contents}
등록일 : ${boardDTO.insertDate}
수정일 : ${boardDTO.updateDate}
</pre>
<a href="${path}">목록</a>
<a href="${path}/boardUpdate?bno=${boardDTO.bno}">수정</a>
<a href="${path}/boardDelete?bno=${boardDTO.bno}">삭제</a>
</body>
</html>