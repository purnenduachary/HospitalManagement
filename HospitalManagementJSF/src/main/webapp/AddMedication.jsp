<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
<meta charset="UTF-8">
<title>Add Medical History</title>
<style>
body {
    font-family: Arial, sans-serif;
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
    font-weight: bold;
    font-size: 15px;
    text-decoration: none;
    padding: 10px 18px;
    background-color: #fbbf24; /* amber-400 */
    border-radius: 6px;
    margin-left: 10px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

nav a:hover {
    background-color: #b45309; /* amber-800 */
    transform: translateY(-2px);
}

.container {
    max-width: 600px;
    margin: 60px auto;
    padding: 40px;
    background-color: #fff7ed; /* light orange cream */
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(251,191,36,0.25);
    text-align: center;
    user-select: none;
    animation: fadeInUp 1s ease forwards;
    opacity: 0;
}

h2 {
    color: #b45309; /* amber-800 */
    margin-bottom: 30px;
    font-weight: 700;
}

.form-group {
    margin-bottom: 20px;
    text-align: left;
}

.form-group label {
    font-weight: bold;
    color: #7c2d12; /* amber-900 */
}

.form-group input {
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    box-sizing: border-box;
    border: 1px solid #fbbf24; /* amber-400 */
    border-radius: 8px;
    transition: border-color 0.3s ease;
}

.form-group input:focus {
    border-color: #b45309; /* amber-800 */
    outline: none;
}

.submit-button {
    padding: 12px 30px;
    font-size: 16px;
    background-color: #fbbf24; /* amber-400 */
    color: #7c2d12; /* amber-900 */
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease, box-shadow 0.3s ease, transform 0.25s ease;
    font-weight: 700;
    box-shadow: 0 6px 15px rgba(251,191,36,0.35);
    user-select: none;
    margin-top: 20px;
}

.submit-button:hover {
    background-color: #b45309; /* amber-800 */
    color: #fff7ed;
    box-shadow: 0 12px 25px rgba(180,83,9,0.6);
    transform: translateY(-3px) scale(1.05);
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

<!-- Navigation Bar -->
<nav>
    <a href="HomePage.jsf">Home</a>
    <a href="MedHisDashBoard.jsf">Medication Dashboard</a>
</nav>

<!-- Main Content -->
<div class="container">
    <h2>Add Patient Medical History</h2>

    <h:form>
       

        <!-- Form Content -->
        <div class="form-container">

            <div class="form-group">
                <h:outputLabel for="patientId" value="Patient Id" />
                <h:inputText id="patientId" value="#{medhis.patient.patientId}" />
            </div>

            <div class="form-group">
                <h:outputLabel for="medicines" value="Medicines" />
                <h:inputText id="medicines" value="#{medhis.medicines}" />
            </div>

            <div class="form-group">
                <h:outputLabel for="tests" value="Tests" />
                <h:inputText id="tests" value="#{medhis.tests}" />
            </div>

            <h:commandButton value="Add Medical History" action="#{doctorController.addMedicalHistoryController}" styleClass="submit-button" />

        </div>
    </h:form>
</div>

</body>
</html>
</f:view>
