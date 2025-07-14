
<!DOCTYPE html>
<html>
<head>
    <title>Meeting Itinerary Planner - Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1557804506-669a67965ba0?auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.93);
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
            width: 400px;
        }

        h1 {
            margin-bottom: 10px;
            font-size: 28px;
            color: #333;
        }

        p {
            margin-bottom: 30px;
            font-size: 16px;
            color: #555;
        }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 12px 25px;
            font-size: 16px;
            color: white;
            background-color: #667eea;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #5a67d8;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Meeting Itinerary Planner</h1>
        <p>Plan, track, and manage your meetings easily and effectively.</p>
        <a href="register" class="btn">Register</a>
        <a href="login" class="btn">Login</a>
    </div>
</body>
</html>
