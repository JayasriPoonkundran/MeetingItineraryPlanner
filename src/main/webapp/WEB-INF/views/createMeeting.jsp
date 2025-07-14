<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Meeting</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .glass-card {
            width: 900px;
            background: rgba(255, 255, 255, 0.75);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            animation: fadeIn 0.6s ease;
        }

        h2 {
            text-align: center;
            font-size: 30px;
            margin-bottom: 35px;
            color: #2d3436;
            letter-spacing: 1px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            transition: transform 0.2s ease;
        }

        .form-group:hover {
            transform: translateY(-3px);
        }

        label {
            font-weight: 600;
            color: #2d3436;
            margin-bottom: 6px;
        }

        input,
        textarea {
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 15px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        input:focus,
        textarea:focus {
            border-color: #6c5ce7;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 90px;
        }

        .full-width {
            grid-column: span 3;
        }

        button {
            margin-top: 30px;
            padding: 14px;
            background: linear-gradient(to right, #6c5ce7, #a29bfe);
            color: white;
            font-weight: bold;
            font-size: 16px;
            border: none;
            border-radius: 12px;
            width: 100%;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: linear-gradient(to right, #5a4de7, #8e82fe);
            transform: scale(1.02);
        }

        .secondary-button {
            display: block;
            text-align: center;
            margin-top: 20px;
            padding: 12px;
            background: linear-gradient(to right, #00b894, #55efc4);
            color: white;
            font-weight: bold;
            font-size: 15px;
            border-radius: 12px;
            text-decoration: none;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .secondary-button:hover {
            background: linear-gradient(to right, #00a383, #38d9a9);
            transform: scale(1.02);
        }

        @media (max-width: 768px) {
            .form-grid {
                grid-template-columns: 1fr;
            }

            .full-width {
                grid-column: span 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="glass-card">
        <h2>Create a New Meeting</h2>
        
        <form method="post" action="/saveMeeting">
            <div class="form-grid">
                <div class="form-group">
                    <label for="title">Meeting Title</label>
                    <input type="text" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="date">Date</label>
                    <input type="date" id="date" name="date" required>
                </div>
                <div class="form-group">
                    <label for="time">Time</label>
                    <input type="time" id="time" name="time" required>
                </div>
                <div class="form-group">
                    <label for="duration">Duration (mins)</label>
                    <input type="number" id="duration" name="duration" required>
                </div>
                <div class="form-group full-width">
                    <label for="agenda">Agenda Summary</label>
                    <textarea id="agenda" name="agenda" required></textarea>
                </div>
            </div>
            <button type="submit">Create Meeting</button>
        </form>
      <div style="text-align: center; margin-top: 20px;">
    <form action="/participantsList" method="get">
        <button type="submit" style="
            background: linear-gradient(to right, #00b894, #55efc4);
            color: white;
            font-weight: bold;
            font-size: 15px;
            border-radius: 12px;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;">
            View Participants
        </button>
    </form>
    <form action="/dashboard" method="get">
        <button type="submit" style="
            background: linear-gradient(to right, #00b894, #55efc4);
            color: white;
            font-weight: bold;
            font-size: 15px;
            border-radius: 12px;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;">
            dashboard
        </button>
    </form>
</div>
      
        

</body>
</html>
