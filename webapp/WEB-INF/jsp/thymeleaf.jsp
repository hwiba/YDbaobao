<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>thymeleaf</title>
</head>
<body>
	<pre>${list}</pre>
	<ul th:each="string : ${list}">
		<li th:text="${string}">test</li>
	</ul>
</body>
</html>