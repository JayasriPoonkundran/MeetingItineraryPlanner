<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Participants</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            width: 450px;
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2d3436;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            color: #2d3436;
            display: block;
            margin-bottom: 6px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 14px;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            font-size: 14px;
            cursor: pointer;
            background: #6c5ce7;
            color: white;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #5a4de7;
        }

        .success-message {
            color: green;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="card">
    <h2>Add Participant</h2>

    <% if (request.getAttribute("successMessage") != null) { %>
        <div class="success-message"><%= request.getAttribute("successMessage") %></div>
    <% } %>

    <form method="post" action="/addParticipants">
        <div class="form-group">
            <label for="name">Participant Name</label>
            <input type="text" name="name" id="name" required />
        </div>

        <div class="form-group">
            <label for="email">Participant Email</label>
            <input type="email" name="email" id="email" required />
        </div>

        <input type="submit" value="Add Participant" />
    </form>
    <form action="/dashboard" method="get" style="margin-top: 10px;">
    <input type="submit" value="Finish" style="background-color: #00b894;" />
</form>
    
</div>

</body>
</html>
