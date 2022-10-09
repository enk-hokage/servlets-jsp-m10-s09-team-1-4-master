<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Task</title>

    <style>
        <%@include file="../styles/main.css"%>
    </style>

</head>
<body>
<%@include file="../pages/header.html" %>

<h2>Create new Task</h2>

<form action="${pageContext.request.contextPath}/create-task" method="post">
    <%
        String msg = (String) request.getAttribute("error");
        if (msg != null) {
    %><p style="color:red"><%= msg %></p><%
    }
%>
    <table>
        <tr style="border:hidden;">
            <td>
                <label for="title" >Name: </label>
            </td>
            <td>
                <input type="text" id="title" name="title" value="Task #2">
            </td>
        </tr>
        <tr style="border:hidden;">
            <td>
                <label for="priority">Priority: </label>
            </td>
            <td>
                <select id="priority" name="priority">
                    <option value="LOW">LOW</option>
                    <option value="MEDIUM" selected>MEDIUM</option>
                    <option value="HIGH">HIGH</option>
                </select>
            </td>
        </tr>
        <tr style="border:hidden;">
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
    <style>
        table, tr {border:hidden;}
        td, th {border:hidden;}
    </style>

</form>
</body>
</html>
