<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patient Management Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f8fb;
        }

        nav {
            background-color: #2c3e50;
            padding: 15px 30px;
            text-align: right;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            background-color: #3498db;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #2980b9;
        }

        .dashboard-container {
            max-width: 800px;
            margin: 60px auto;
            text-align: center;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .dashboard-container h1 {
            margin-bottom: 40px;
            color: #2c3e50;
        }

        .menu-button {
            display: block;
            margin: 20px auto;
            padding: 18px 40px;
            font-size: 18px;
            background-color: #27ae60;
            color: white;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s ease;
            width: 70%;
            max-width: 400px;
        }

        .menu-button:hover {
            background-color: #1e8449;
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
    <a href="ShowPatient.jsf" class="menu-button">Show Patient</a>
</div>

</body>
</html>
