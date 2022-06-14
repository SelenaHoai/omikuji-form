<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>

<!-- CSS Link -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/app.js"></script>
	
<!-- <!-- Bootstrap Link -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

	<div class="container">
		<h2>Send an Omikuji!</h2>
		<div class="form">
			<form action="/omikuji/post" method="POST">
				<p>
					Pick any number from 5 to 25.</br>
					<input type="number" id="quantity" name="quantity">
				</p>
				<p>
					Enter the name of any city.</br>
					<input type="text" id="cityname" name="cityname">
				</p>
				<p>
					Enter the name of any real person.</br>
					<input type="text" id="personname" name="personname">
				</p>
				<p>
					Enter professional endeavor or hobby.</br>
					<input type="text" id="hobby" name="hobby">
				</p>
				<p>
					Enter any type of living thing.</br>
					<input type="text" id="type" name="type">
				</p>
				<p>
					Say something nice to someone:</br>
					<textarea rows="3" cols ="40" name="quote"></textarea>
				</p>
				<p>Send an show a friend</p>
				<button class="button">Submit</button>
			</form>
		</div>
	</div>
</body>
</html>