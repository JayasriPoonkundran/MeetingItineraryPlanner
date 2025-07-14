<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Meeting</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .update-card {
            background: rgba(255, 255, 255, 0.85);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            width: 500px;
            backdrop-filter: blur(10px);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2d3436;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #2d3436;
        }

        input, textarea {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            margin-top: 6px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        input:focus, textarea:focus {
            border-color: #6c5ce7;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        button {
            margin-top: 25px;
            width: 100%;
            padding: 14px;
            background: linear-gradient(to right, #6c5ce7, #a29bfe);
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: linear-gradient(to right, #5a4de7, #8e82fe);
            transform: scale(1.02);
        }
    </style>
</head>
<body>

<div class="update-card">
    <h2>Update Meeting</h2>
    <form method="post" action="/updateMeeting">
        <input type="hidden" name="id" value="${meeting.id}" />
        
        <label for="title">Title</label>
        <input type="text" id="title" name="title" value="${meeting.title}" required />

        <label for="date">Date</label>
        <input type="date" id="date" name="date" value="${meeting.date}" required />

        <label for="time">Time</label>
        <input type="time" id="time" name="time" value="${meeting.time}" required />

        <label for="duration">Duration (mins)</label>
        <input type="number" id="duration" name="duration" value="${meeting.duration}" required />

        <label for="agenda">Agenda</label>
        <textarea id="agenda" name="agenda" required>${meeting.agenda}</textarea>

        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
