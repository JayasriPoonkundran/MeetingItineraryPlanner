<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Itinerary</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background: #6c5ce7;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #6c5ce7;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h2>Meeting Itinerary</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Date</th>
            <th>Time</th>
            <th>Duration (mins)</th>
            <th>Agenda</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="meeting" items="${meetings}">
            <tr>
                <td>${meeting.id}</td>
                <td>${meeting.title}</td>
                <td>${meeting.date}</td>
                <td>${meeting.time}</td>
                <td>${meeting.duration}</td>
                <td>${meeting.agenda}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a class="back-link" href="/dashboard">Back to Dashboard</a>

</body>
</html>
