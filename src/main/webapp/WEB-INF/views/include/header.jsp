<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
body {
	font-family: 'Nanum Gothic', sans-serif;
}

.container{
	max-width:1080px;
	margin:auto auto;
}

#login-form {
	height: 600px;
	padding: 20px;
	margin-bottom: 20px;
	border: 1px solid #bcbcbc;
	text-align: center;
}

#form1 {
	font-size: 1.3em;
	max-width: 300px;
	display: inline-block;
}

::placeholder {
	font-size: 1.3em;
	font-family: 'Nanum Gothic', sans-serif;
}

button {
	border: 0px;
	background-color: white;
}

#head-gnb {
	border: 1px solid #bcbcbc;
	margin-top:2%;
	margin-bottom: 2%;
}

#head-gnb>ul {
	width: 100%;
	margin-top:16px;
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
		<div id="head-gnb">
			<ul>
				<li id="top"><a href="index.html">BOARD</a></li>
				<li><a href="index.html">MYPAGE</a></li>
				<li><a href="index.html">LOGOUT</a></li>
			</ul>
		</div>
</body>
</html>
