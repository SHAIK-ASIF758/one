<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Auto increment Table</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>

<%
    Integer a = (Integer) session.getAttribute("auto");
    if (a == null) {
        a = 1;  
        session.setAttribute("auto", a);
    }

    // Initialize or retrieve the list of items (simulating table data)
    List<String> items = (List<String>) session.getAttribute("items");
    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute("items", items);
    }

    // Check if the form was submitted (user added a new row)
    String newItem = request.getParameter("newItem");
    if (newItem != null && !newItem.trim().isEmpty()) {
        items.add(newItem); 
        session.setAttribute("auto", ++a); // Increment the auto-increment value
    }
%>

<h2>Auto-Increment Table</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Item Name</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (int i = 0; i < items.size(); i++) {
        %>
        <tr>
            <td><%= (i + 1) %></td>
            <td><%= items.get(i) %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<h3>Add a new item:</h3>
<form method="post">
    <input type="text" name="newItem" placeholder="Enter item name" required />
    <input type="submit" value="Add Item" />
</form>

</body>
</html>
