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

<input type="hidden" name="bno" value="${boardDTO.bno}">
<input type="text" name="replyer" value="댓글유저">
<input type="text" name="reply">
<button onclick="replyInsert()">등록</button>
</body>

<script type="text/javascript">

function replyInsert() {
	
	var xhr = new XMLHttpRequest();
	var data = {
		bno: "${boardDTO.bno}",
		replyer: document.getElementsByName("replyer")[0].value,
		reply: document.getElementsByName("reply")[0].value		
	};
	
	xhr.onload = function() {
		if(xhr.status === 200 || xhr.status === 201) {
			console.log(xhr.responseText);
		} else {
			console.error(xhr.responseText);
		}
	}
	
	xhr.open("post","${path}/reply");
	xhr.setRequestHeader("content-Type", "application/json");
	xhr.send(JSON.stringify(data));
	
}

</script>

</html>