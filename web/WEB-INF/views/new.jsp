
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/forget/reset" method="post">
    请输入新的密码：<input type="text" name="password" >
    <input type="hidden" name="id" value="${user.id}">
    <input type = "submit" value = "重置">
</form>
</body>
</html>

