<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Tasks</title>

    <style>
        <%@include file="../styles/main.css"%>
    </style>

</head>
<body>
<%@include file="../pages/header.html" %>

<h2>List of Tasks</h2>

<form method="post">
    <table>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Priority</th>
            <th colspan="3">Operation</th>
        </tr>
        <%
            for (Task task : (List<Task>) request.getAttribute("tasks")) {
        %>
        <tr style=" border: 1px solid;">
            <td><%=task.getId()%></td>
            <td><%=task.getTitle()%></td>
            <td><%=task.getPriority()%></td>
            <td>
                <a href="${pageContext.request.contextPath}/read-task?id=<%=task.getId()%>">Read</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/edit-task?id=<%=task.getId()%>">Edit</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/delete-task?id=<%=task.getId()%>">Delete</a>
            </td>
        </tr>
        <%
            }%>
    </table>
    <style>
        table, th, td {
            border-collapse: collapse;
            border: 1px solid;
        }
    </style>
</form>

</body>
</html>
