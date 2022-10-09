<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="com.softserve.itacademy.model.Priority" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing Task</title>

    <style>
        <%@include file="../styles/main.css"%>
    </style>
</head>
<body>
<%@include file="header.html" %>
<%
    Task task = (Task) request.getAttribute("task");
%>

<h2><%=request.getAttribute("errorMessage") %></h2>

<form action="${pageContext.request.contextPath}/edit-task?id=<%=task.getId()%>" method="post">
    <table>
        <tr>
            <td>
                <label for="id">Id:</label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="title">Name:</label>
            </td>
            <td>
                <input type="text" id="title" name="title" value="<%=task.getTitle()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="priority">Priority:</label>
            </td>
            <td>
                <select id="priority" name="priority">
                    <option value="LOW">LOW</option>
                    <option value="MEDIUM" selected>MEDIUM</option>
                    <option value="HIGH">HIGH</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>