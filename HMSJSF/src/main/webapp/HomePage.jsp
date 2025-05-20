<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Main Menu Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; padding: 0;
            background: #f0f2f5;
        }
        .menu-container {
            max-width: 600px;
            margin: 100px auto;
            text-align: center;
        }
        .menu-container h1 {
            margin-bottom: 40px;
            color: #333;
        }
        .menu-button {
            display: inline-block;
            margin: 15px;
            padding: 20px 50px;
            background-color: #007bff;
            color: white;
            font-size: 22px;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .menu-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="menu-container">
    <h1>Main Menu Dashboard</h1>
    <a href="DoctorDashBoard.jsf" class="menu-button">Doctor Dashboard</a>
    <a href="PatientDashBoard.jsf" class="menu-button">Patient Dashboard</a>
    <a href="MedHisDashBoard.jsf" class="menu-button">Medication History</a>
</div>

</body>
</html>
