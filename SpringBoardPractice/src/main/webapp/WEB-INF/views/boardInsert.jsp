<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록폼</title>
</head>
<body>
<form action="${path}/boardInsert" method="post">
<pre>
작성자 <input type="text" name="writer">
제목 : <input type="text" name="title">
내용 : <textarea name="contents" rows="10" cols="20"></textarea>
</pre>
<input type="submit" value="등록">
<button onclick="list()">목록</button>
</form>

<form action="${path}/fileUploadAction" method="post" enctype="multipart/form-data">
<input type="file" name="uploadFile" multiple="multiple">
<input type="submit" value="업로드">
</form>

</body>

<script type="text/javascript">
	
	function list() {
		window.location.href = "${path}/";
	}
</script>

</html>