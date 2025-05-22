<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Medication-History Dashboard</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    background: linear-gradient(135deg, #fff4e5, #ffd9b3); /* light orange gradient */
}

nav {
    background-color: #d97706; /* amber-700 */
    padding: 15px 30px;
    text-align: right;
    box-shadow: 0 4px 10px rgba(217,119,6,0.3);
}

nav a {
    color: #fff9f0; /* light cream */
    text-decoration: none;
    font-weight: bold;
    font-size: 16px;
    background-color: #fbbf24; /* amber-400 */
    padding: 10px 20px;
    border-radius: 8px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

nav a:hover {
    background-color: #b45309; /* amber-800 */
    transform: translateY(-3px);
}

.dashboard-container {
    max-width: 800px;
    margin: 60px auto;
    text-align: center;
    background-color: #fff7ed; /* light orange cream */
    padding: 40px;
    border-radius: 16px;
    box-shadow: 0 8px 24px rgba(251,191,36,0.25);
    user-select: none;
    animation: fadeInUp 1s ease forwards;
    opacity: 0;
}

.dashboard-container h1 {
    margin-bottom: 40px;
    color: #b45309; /* amber-800 */
    font-weight: 700;
    font-size: 2.5rem;
}

.menu-button {
    display: block;
    margin: 0 auto 25px auto;
    padding: 18px 40px;
    width: 70%;
    max-width: 400px;
    font-size: 18px;
    background-color: #fbbf24; /* amber-400 */
    color: #7c2d12; /* amber-900 */
    border: none;
    border-radius: 12px;
    text-decoration: none;
    font-weight: 700;
    box-shadow: 0 6px 15px rgba(251,191,36,0.35);
    transition: background-color 0.3s ease, box-shadow 0.3s ease, transform 0.25s ease;
    cursor: pointer;
    user-select: none;
}

.menu-button:hover {
    background-color: #b45309; /* amber-800 */
    color: #fff7ed;
    box-shadow: 0 12px 25px rgba(180,83,9,0.6);
    transform: translateY(-4px) scale(1.05);
}

@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(30px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>
</head>
<body>

<nav>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="dashboard-container">
    <h1>Medication-History Dashboard</h1>
    
    <a href="AddMedication.jsf" class="menu-button">Add Medication</a>
    <a href="ShowPatientMedicalHistory.jsf" class="menu-button">View Patient Medical History</a>
</div>

</body>
</html>
