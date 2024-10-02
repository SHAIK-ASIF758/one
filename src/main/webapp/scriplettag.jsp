<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
    boolean c = true; 

    if (c) {
%>
    <jsp:forward page="three.jsp"/>
<%
    } else {
%>
    <jsp:forward page="one.jsp"/>
<%
    }
%>

</body>
</html>
