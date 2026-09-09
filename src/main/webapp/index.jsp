<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sports Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
            color: #f8fafc;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar */
        header {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding: 1.2rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            background: linear-gradient(90deg, #38bdf8, #818cf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav a {
            color: #cbd5e1;
            text-decoration: none;
            margin-left: 1.5rem;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #38bdf8;
        }

        /* Hero Banner */
        .hero {
            text-align: center;
            padding: 3rem 1rem 2rem;
        }

        .hero h1 {
            font-size: 2.8rem;
            margin-bottom: 0.8rem;
            background: linear-gradient(90deg, #f43f5e, #fb923c, #facc15);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: #94a3b8;
            font-size: 1.1rem;
        }

        /* Container Layout */
        .container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 2rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            width: 100%;
        }

        /* Glassmorphism Cards */
        .card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 16px;
            padding: 2rem;
            backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
        }

        .card h2 {
            font-size: 1.5rem;
            margin-bottom: 1.2rem;
            color: #38bdf8;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        /* Registration Form */
        .form-group {
            margin-bottom: 1.2rem;
        }

        label {
            display: block;
            font-size: 0.9rem;
            color: #cbd5e1;
            margin-bottom: 0.4rem;
        }

        input, select {
            width: 100%;
            padding: 0.75rem 1rem;
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(15, 23, 42, 0.6);
            color: #fff;
            outline: none;
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #818cf8;
        }

        .btn-submit {
            width: 100%;
            padding: 0.8rem;
            border: none;
            border-radius: 8px;
            background: linear-gradient(90deg, #6366f1, #a855f7);
            color: #fff;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 20px rgba(168, 85, 247, 0.4);
        }

        /* Live Scoreboard Preview */
        .match-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0.8rem 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
        }

        .match-item:last-child {
            border-bottom: none;
        }

        .team-names {
            font-weight: 600;
            color: #f1f5f9;
        }

        .badge-live {
            background: #ef4444;
            color: #fff;
            padding: 0.2rem 0.6rem;
            border-radius: 12px;
            font-size: 0.75rem;
            font-weight: 700;
            animation: pulse 1.5s infinite;
        }

        .badge-upcoming {
            background: #0ea5e9;
            color: #fff;
            padding: 0.2rem 0.6rem;
            border-radius: 12px;
            font-size: 0.75rem;
            font-weight: 700;
        }

        @keyframes pulse {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }

        /* Footer */
        footer {
            margin-top: auto;
            text-align: center;
            padding: 1.5rem;
            font-size: 0.85rem;
            color: #64748b;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <header>
        <div class="logo">🏆 SMS Portal</div>
        <nav>
            <a href="index.jsp">Home</a>
            <a href="schedule.jsp">Schedule</a>
            <a href="#">Teams</a>
            <a href="#">Standings</a>
        </nav>
    </header>

    <section class="hero">
        <h1>Sports Management System</h1>
        <p>Manage registrations, view live scores, and track tournament schedules</p>
    </section>

    <main class="container">
        <!-- Registration Form Card -->
        <div class="card">
            <h2>📝 Player Registration</h2>
            <form action="RegistrationServlet" method="POST">
                <div class="form-group">
                    <label for="playerName">Full Name</label>
                    <input type="text" id="playerName" name="playerName" placeholder="e.g. Rahul Sharma" required>
                </div>
                <div class="form-group">
                    <label for="sport">Select Sport</label>
                    <select id="sport" name="sport">
                        <option value="Cricket">Cricket</option>
                        <option value="Football">Football</option>
                        <option value="Basketball">Basketball</option>
                        <option value="Badminton">Badminton</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="player@sports.com" required>
                </div>
                <button type="submit" class="btn-submit">Register Player</button>
            </form>
        </div>

        <!-- Live Scoreboard Card -->
        <div class="card">
            <h2>⚡ Tournament Dashboard</h2>
            <div class="match-item">
                <div>
                    <div class="team-names">Striker FC vs Thunder XI</div>
                    <small style="color: #94a3b8;">Football • Semi-Final</small>
                </div>
                <span class="badge-live">LIVE 2 - 1</span>
            </div>
            <div class="match-item">
                <div>
                    <div class="team-names">Royal Warriors vs Titan Kings</div>
                    <small style="color: #94a3b8;">Cricket • Final Match</small>
                </div>
                <span class="badge-upcoming">180/4 (18.2)</span>
            </div>
            <div class="match-item">
                <div>
                    <div class="team-names">Smashers vs Net Rippers</div>
                    <small style="color: #94a3b8;">Badminton • Doubles</small>
                </div>
                <span class="badge-upcoming">TODAY 5:00 PM</span>
            </div>
        </div>
    </main>

    <footer>
        <p>&copy; 2026 Sports Management System | Built with Java Servlets, JSP & Maven</p>
    </footer>

</body>
</html>