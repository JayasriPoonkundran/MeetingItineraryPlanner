<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Meeting Itinerary Planner</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1557683304-673a23048d34?auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        a.button {
            display: block;
            text-decoration: none;
            background-color: #667eea;
            color: white;
            padding: 15px;
            margin: 15px 0;
            border-radius: 10px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #5a67d8;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Meeting Itinerary Planner</h2>
        <a href="create-meeting" class="button">Create New Meeting</a>
       
        <a href="/view-itinerary" class="button">View Itinerary</a>
        
         <a href="/MeetingList" class="button">List Of meeting</a>
        
    </div>
</body>
</html>
    