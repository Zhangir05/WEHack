<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Users</title>
</head>
<body>
<h1>Users</h1>

<#list users as user>
    <p>${user.id} - ${user.name}</p>
</#list>
</body>
</html>