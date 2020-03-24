<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CRUD</title>
<style type="text/css">
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}
</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 'Nanum Brush Script', cursive;
}

.container {
	max-width: 1080px;
	margin: auto auto;
}

#login-form1 {
	height: 600px;
	padding: 20px;
	margin-bottom: 20px;
	border: 1px solid #bcbcbc;	
}

#form2 {
	font-size: 1.3em;
	max-width: 1000px;
	display: inline-block;
}

::placeholder {
	font-size: 1.3em;
	font-family: 'Nanum Brush Script', cursive;
}

button {
	border: 0px;
	background-color: white;
}

#head-gnb {
	border: 1px solid #bcbcbc;
	margin-bottom: 2%;
}

#head-gnb>ul {
	width: 100%;
}

#head-gnb>ul>li {
	display: inline;
	border-left: 1px solid #bcbcbc;
	font: bold 12px;
	padding: 0 10px;
}

#head-gnb>ul>li:first-child {
	border-left: none;
}

.table-width-flex1 {
	width:10%
}
.table-width-flex2 {
	width:40%
}
.table-width-flex3 {
	width:20%
}
.table-width-flex4 {
	width:20%
}
.table-width-flex5 {
	width:10%
}
#button-box{
	width:100%;
	max-width:1000px;
	text-align:center;
}
</style>
<script>
$(document).ready(function(){
	var formObj = $("form[role='form2']");
 	console.log(formObj);
 	$(".btn-warning").on("click", function(){
 		formObj.attr("action", "/board/modifyPage");
 		formObj.attr("method", "get");
 		formObj.submit();
 	});
 	$(".btn-danger").on("click", function(){
 		fromObj.attr("method", "get");
 		formObj.attr("action", "/board/removePage");
 		formObj.submit();
 	});
 	/* $(".btn-primary").on("click", function(){
 		self.location="/board/listPage";
 	}); */
 	$(".btn-primary").on("click", function(){
 		formObj.attr("method", "get");
 		formObj.attr("action", "/board/listPage");
 		formObj.submit();
 	});
});

</script>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<!--상단 메뉴 태그-->
			<%@include file="/WEB-INF/views/include/header.jsp"%>

			<!--로그인 폼 태그-->
			<div id="login-form1">					
				<form role="form2" method="post">
					<input type="hidden" name="bno" value="${boardVO.bno}">
					<input type="hidden" name="page" value="${cri.page}">
					<input type="hidden" name="perPageNum" value="${cri.perPageNum}">
				</form>
				<div class="form-group">
					<label for="exampleInputEmail1">Title</label>
					<input type="text" name="title" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.title }">
				</div>
				<div class="form-group">
					<label for="exampleFormControlTextarea1">Content</label>
					<textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3" readonly="readonly">${boardVO.content }</textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Writer</label> 
					<input type="text" name="writer" class="form-control" readonly="readonly" value="${boardVO.writer }">
				</div>
				<div id="button-box">
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-primary">List All</button>
					<button type="submit" class="btn btn-danger">Remove</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
