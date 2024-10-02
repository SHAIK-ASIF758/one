<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Bean Example</title>
</head>
<body>

<jsp:useBean id="pojo" class="check.Pojo" scope="page" />
<jsp:setProperty name="person" property="name" value="asif" />

<p>ur name is: <jsp:getProperty name="person" property="name" /></p>

</body>
</html>
