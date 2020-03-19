<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script"
	rel="stylesheet">
<style>
body {
	font-family: 'Nanum Brush Script', cursive;
}

#login-form {
	padding: 20px;
	margin-bottom: 20px;
	border: 1px solid #bcbcbc;
	text-align: center;
}

#form1 {
	font-size: 1.3em;
	width: 50%;
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
</style>
</head>
<body>
	<div class="container">
		<!--상단 메뉴 태그-->
		<div id="head-gnb">
			<ul>
				<li id="top"><a href="index.html">BOARD</a></li>
				<li><a href="index.html">MYPAGE</a></li>
				<li><a href="index.html">LOGOUT</a></li>
			</ul>
		</div>

		<!--로그인 폼 태그-->
		<div id="login-form">
			<div id="form1">
				<form action="" method="" enctype="multipart/form-data">
					<fieldset>
						<legend>LOGIN</legend>
						<input type="text" name="userid" placeholder="Enter your id"><br>
						<br> <input type="password" name="userpw"
							placeholder="Enter your password"><br>
						<br>
						<button type="submit">login</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
