<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
</head>
<body>
<form action="${path}/boardUpdate" method="post">
<input type="hidden" name="bno" value="${boardDTO.bno }">
<pre>
번호 : ${boardDTO.bno}
조회수 : ${boardDTO.views}
작성자 : ${boardDTO.writer}
제목 : <input type="text" name="title" value="${boardDTO.title}">
내용 : <textarea name="contents" rows="10" cols="20">${boardDTO.contents}</textarea>
등록일 : ${boardDTO.insertDate}
수정일 : ${boardDTO.updateDate}
</pre>
<input type="submit" value="수정">
<button onclick="cancel()">취소</button>
<button onclick="list()">목록</button>
</form>
</body>

<script type="text/javascript">
	function cancel() {
		window.location.href = "${path}/boardSelectOne?bno=${boardDTO.bno}";
	}
	
	function list() {
		window.location.href = "${path}/";
	}
</script>

</html>