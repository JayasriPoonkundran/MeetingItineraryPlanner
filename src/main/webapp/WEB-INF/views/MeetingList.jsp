<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Meeting List</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #f0f4f8 0%, #ffffff 100%);
            margin: 0;
            padding: 40px;
        }

        h2 {
            text-align: center;
            color: #2d3436;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
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

        a.button {
            padding: 8px 16px;
            margin: 5px;
            border: none;
            border-radius: 8px;
            color: white;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
        }

        .delete {
            background: #d63031;
        }

        .delete:hover {
            background: #c0392b;
        }

        .update {
            background: #00b894;
        }

        .update:hover {
            background: #00a383;
        }
    </style>
</head>
<body>

    <h2>Meeting List</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Date</th>
                <th>Time</th>
                <th>Duration</th>
                <th>Agenda</th>
                <th>Actions</th>
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
                    <td>
                        <a class="button delete" href="/deleteMeeting?id=${meeting.id}">Delete</a>
                        <a class="button update" href="/updateMeetingForm?id=${meeting.id}">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
         <div style="text-align: center; margin-top: 30px;">
        <a href="/dashboard" class="button" style="background-color: #0984e3;">Back to Dashboard</a>
    </div>
     
</body>
</html>
