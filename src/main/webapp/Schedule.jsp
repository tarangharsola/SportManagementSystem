<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Match Schedule - Sports Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            color: #333;
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            max-width: 650px;
            width: 100%;
            backdrop-filter: blur(10px);
        }

        h2 {
            color: #2d3748;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #e2e8f0;
        }

        th {
            background-color: #27ae60;
            color: white;
            border-radius: 4px;
        }

        tr:hover {
            background-color: #f1f8f5;
        }

        .btn-back {
            display: inline-block;
            text-decoration: none;
            padding: 10px 20px;
            background: #2d3748;
            color: white;
            border-radius: 8px;
            font-weight: 600;
            text-align: center;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            background: #1a202c;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Upcoming Sports Tournament Schedule</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Event / Sport</th>
                    <th>Teams</th>
                    <th>Date & Time</th>
                    <th>Venue</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Football</td>
                    <td>Eagles vs. Panthers</td>
                    <td>Oct 15, 10:00 AM</td>
                    <td>Main Ground</td>
                </tr>
                <tr>
                    <td>Basketball</td>
                    <td>Titans vs. Warriors</td>
                    <td>Oct 16, 02:00 PM</td>
                    <td>Indoor Court 1</td>
                </tr>
                <tr>
                    <td>Cricket</td>
                    <td>Lions vs. Strikers</td>
                    <td>Oct 18, 09:00 AM</td>
                    <td>Sports Complex</td>
                </tr>
            </tbody>
        </table>

        <a href="index.jsp" class="btn-back">&larr; Back to Home</a>
    </div>

</body>
</html>