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
            background-color: #f4f4f4;
        }

        nav {
            background-color: #2c3e50;
            padding: 15px 30px;
            text-align: right;
        }

        nav a {
            color: white;
            font-weight: bold;
            font-size: 15px;
            text-decoration: none;
            padding: 10px 18px;
            background-color: #3498db;
            border-radius: 5px;
            margin-left: 10px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #2980b9;
        }

        .container {
            max-width: 600px;
            margin: 60px auto;
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .submit-button {
            padding: 12px 30px;
            font-size: 16px;
            background-color: #27ae60;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .submit-button:hover {
            background-color: #1e8449;
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
        <div class="form-group">
            <label for="tests">Tests:</label>
            <h:inputText id="tests" value="#{doctorController.medhis.tests}" />
        </div>

        <div class="form-group">
            <label for="medicines">Medicines:</label>
            <h:inputText id="medicines" value="#{doctorController.medhis.medicines}" />
        </div>

        <div class="form-group">
            <label for="medId">Med ID:</label>
            <h:inputText id="medId" value="#{doctorController.medhis.medId}" />
        </div>

        <h:commandButton value="Add Medical History"
                         action="#{doctorController.addMedicalHistoryController}"
                         styleClass="submit-button" />
    </h:form>
</div>

</body>
</html>
</f:view>
