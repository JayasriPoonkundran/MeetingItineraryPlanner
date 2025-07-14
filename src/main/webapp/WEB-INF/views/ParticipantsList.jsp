<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Participants List</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            padding: 50px;
        }

        h2 {
            text-align: center;
            color: #2d3436;
            margin-bottom: 30px;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #eee;
        }

        th {
            background-color: #6c5ce7;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .back-button {
            margin-top: 30px;
            text-align: center;
        }

        .back-button a {
            background-color: #00b894;
            color: white;
            padding: 12px 25px;
            border-radius: 10px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .back-button a:hover {
            background-color: #019270;
        }
    </style>
</head>
<body>

<h2>Participants List</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Participant Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="participant" items="${participants}">
            <tr>
                <td>${participant.id}</td>
                <td>${participant.name}</td>
                <td>${participant.email}</td>
                <td>
                    <a href="/editParticipant?id=${participant.id}" 
                       style="color: white; background-color: #00b894; padding: 6px 12px; border-radius: 8px; text-decoration: none;">Edit</a>
                    <a href="/deleteParticipant?id=${participant.id}" 
                       style="color: white; background-color: #d63031; padding: 6px 12px; border-radius: 8px; text-decoration: none; margin-left: 10px;">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<div class="back-button">
    <a href="/create-meeting">Back to create Meeting</a>
</div>

</body>
</html>
