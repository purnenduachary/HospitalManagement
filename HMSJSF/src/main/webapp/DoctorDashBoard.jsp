<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Hospital Management Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; padding: 0;
        }
        nav {
            background-color: #333;
            padding: 10px 20px;
            text-align: right;
        }
        nav a {
            color: white;
            font-weight: bold;
            font-size: 16px;
            text-decoration: none;
            padding: 6px 15px;
            border-radius: 4px;
            background-color: #28a745; /* green */
            transition: background-color 0.3s ease;
        }
        nav a:hover {
            background-color: #1e7e34;
        }
        .menu-container {
            text-align: center;
            padding: 50px;
        }
        .menu-container a {
            display: inline-block;
            margin: 20px;
            padding: 20px 40px;
            background-color: #007bff;
            color: white;
            font-size: 20px;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .menu-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<nav>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="menu-container">
    <h1>Hospital Management Menu</h1>
    <a href="AddDoctor.jsf">Add Doctor</a>
    <a href="DoctorShow.jsf">Show Doctors</a>
    <a href="SearchDocById.jsf">Search by Doctor ID</a>
    <a href="SearchBySpec.jsf">Search by Doctor by Specilization</a>
</div>

</body>
</html>
