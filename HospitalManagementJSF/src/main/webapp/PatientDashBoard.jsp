<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Management Dashboard</title>
    <style>
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background: linear-gradient(135deg, #d1fae5, #a7f3d0); /* light green gradient */
        }

        nav {
            background-color: #047857; /* Emerald-700 */
            padding: 15px 30px;
            text-align: right;
            box-shadow: 0 4px 8px rgba(4,120,87,0.3);
            animation: fadeInUp 0.8s ease forwards;
        }

        nav a {
            color: #e6fffa; /* teal-50 */
            text-decoration: none;
            font-weight: 700;
            font-size: 16px;
            background-color: #10b981; /* Emerald-500 */
            padding: 10px 24px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            user-select: none;
            display: inline-block;
        }

        nav a:hover {
            background-color: #059669; /* Emerald-600 */
            transform: translateX(6px);
        }

        .dashboard-container {
            max-width: 800px;
            margin: 60px auto;
            text-align: center;
            background-color: #ffffff;
            padding: 50px 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            user-select: none;
            opacity: 0;
            animation: fadeInUp 1s ease forwards;
            animation-delay: 0.3s;
        }

        .dashboard-container h1 {
            margin-bottom: 45px;
            color: #065f46; /* Emerald-900 */
            font-weight: 800;
            font-size: 2.5rem;
        }

        .menu-button {
            display: block;
            margin: 20px auto;
            padding: 18px 42px;
            font-size: 20px;
            background-color: #10b981; /* Emerald-500 */
            color: white;
            border: none;
            border-radius: 12px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
            width: 70%;
            max-width: 420px;
            box-shadow: 0 6px 15px rgba(16,185,129,0.3);
            cursor: pointer;
            opacity: 0;
            animation: fadeInUp 1s ease forwards;
            animation-delay: 0.5s;
        }

        .menu-button:hover {
            background-color: #059669; /* Emerald-600 */
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 10px 25px rgba(5,150,105,0.4);
        }
    </style>
</head>
<body>

<nav>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="dashboard-container">
    <h1>Patient Management Dashboard</h1>

    <a href="SearchPatientByDocId.jsf" class="menu-button">Search Patient by Doctor ID</a>
    <a href="SearchPatientById.jsf" class="menu-button">Search Patient by Patient ID</a>

</div>

</body>
</html>
