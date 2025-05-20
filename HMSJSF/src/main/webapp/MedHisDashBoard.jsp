<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Medication-History Dashboard</title>
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

/* ==== centre “card” === */
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
	margin: 0 auto;
	padding: 18px 40px;
	width: 70%;
	max-width: 400px;
	font-size: 18px;
	background-color: #27ae60;
	color: #fff;
	border: none;
	border-radius: 8px;
	text-decoration: none;
	transition: background-color 0.3s ease;
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
		<h1>Medication-History Dashboard</h1>

		<a href="ShowPatientMedicalHistory.jsf" class="menu-button"> View
			Patient Medical History </a>
			<br></br>
			<a href="AddMedication.jsf" class="menu-button"> View
			Add Medication </a>
	</div>

</body>
</html>
