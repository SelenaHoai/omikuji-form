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
	
<!-- Bootstrap Link -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

	<div class="container">
		<h2>Here's Your Omikuji!</h2>
		<div class="result">
			<p>In <c:out value="${quantity}"/> years, you will live in <c:out value="${cityname}"/>
			with <c:out value="${personname}"/> as your room mate, <c:out value="${hobby}"/> for a living.
			The next time you see a <c:out value="${type}"/>,you will have good luck. Also,<c:out value="${quote}"/>.
			</p>
		</div>
		
		<a href="/omikuji">Go Back</a>
	</div>

</body>
</html>