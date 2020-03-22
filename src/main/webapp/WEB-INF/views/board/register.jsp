<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	max-width: 100%;
	width:1000px;
	display: inline-block;
}

#button-box{
	width:100%;
	max-width:1000px;
	text-align:center;
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<!--상단 메뉴 태그-->
			<%@include file="/WEB-INF/views/include/header.jsp"%>

			<!--로그인 폼 태그-->
			<div id="login-form1">
				<div id="form2">
					<!-- <form role="form" method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Title</label> 
								<input type="text" name="title" class="form-control" placeholder="Enter Title">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Content</label>
								<textarea class="form-control" name="content" rows="3"
									placeholder="Enter ..."></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Writer</label> <input type="text"
									name="writer" class="form-control" placeholder="Enter Writer">
							</div>
						</div>
						<div class="form-control">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form> -->
					<form role="form" method="post">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Title</label>
					    <input type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
					  </div>
					  <div class="form-group">
					    <label for="exampleFormControlTextarea1">Content</label>
					    <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="3" placeholder="Enter...."></textarea>
					  </div>
					  <div class="form-group">
						<label for="exampleInputEmail1">Writer</label> 
						<input type="text" name="writer" class="form-control" placeholder="Enter Writer" >
					  </div>
					  <div id="button-box">
					  	<button type="submit" class="btn btn-primary">Submit</button>
					  </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
