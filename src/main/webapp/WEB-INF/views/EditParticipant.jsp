<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Participant</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .card {
            width: 400px;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            font-size: 15px;
            background-color: #6c5ce7;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #5a4de7;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Edit Participant</h2>
        <form method="post" action="/updateParticipant">
            <input type="hidden" name="id" value="${participant.id}" />
            <label for="name">Name:</label>
            <input type="text" name="name" value="${participant.name}" required />

            <label for="email">Email:</label>
            <input type="email" name="email" value="${participant.email}" required />

            <input type="submit" value="Update" />
        </form>
    </div>
</body>
</html>
