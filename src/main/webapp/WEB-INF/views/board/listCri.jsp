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
#tr1{
 cursor:pointer;
 }
</style>
<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("글 등록 처리가 완료되었습니다.");
	}
	if(result =='remove_SUCCESS'){
		alert("글 삭제 처리가 완료되었습니다.");
	}
	if(result =='modify_SUCCESS'){
		alert("글 수정 처리가 완료되었습니다.");
	}
</script>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<!--상단 메뉴 태그-->
			<%@include file="/WEB-INF/views/include/header.jsp"%>

			<!--로그인 폼 태그-->
			<div id="login-form1">					
				<table class="table table-striped">
					<thead>
						<tr>
							<th style="width: 10px;" class="table-width-flex1">Bno</th>
							<th class="table-width-flex2">Title</th>
							<th class="table-width-flex3">Writer</th>
							<th class="table-width-flex4">RegDate</th>
							<th class="table-width-flex5">ViewCnt</th>
						</tr>
					</thead>
					<tbody>					
					<c:forEach items="${list}" var="boardVO">
						<tr>
							<td class="table-width-flex1">${boardVO.bno}</td>
							<td class="table-width-flex2"  onclick="location.href='/board/read?bno=${boardVO.bno}'" id="tr1">${boardVO.title}</td>
							<td class="table-width-flex3">${boardVO.writer}</td>
							<td class="table-width-flex4"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
							<td class="table-width-flex5">${boardVO.viewcnt}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
