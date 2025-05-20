<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patient by ID</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f8fa;
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
            font-size: 15px;
            background-color: #3498db;
            padding: 10px 18px;
            margin-left: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #2980b9;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        table {
            margin: 20px auto;
        }

        th, td {
            padding: 10px 15px;
        }
    </style>
</head>
<body>

<nav>
    <a href="HomePage.jsf">Home</a>
    <a href="PatientDashBoard.jsf">Patient Dashboard</a>
</nav>

<div class="container">
    <h2>Search Patient by ID</h2>

    <h:form>

        <h:messages globalOnly="true" style="color:red; font-weight:bold;" />

        <div class="form-group">
            <h:outputLabel for="patientId" value="Patient ID" />
            <h:inputText id="patientId" value="#{doctorController.patientId}" />
            <br/><br/>
            <h:commandButton value="Search" action="#{doctorController.getPatientById}" />
        </div>

        <h:dataTable value="#{doctorController.patient}" var="patient" border="1"
                     rendered="#{not empty doctorController.patient}">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Patient Name" />
                </f:facet>
                <h:outputText value="#{patient.patientName}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Date of Birth" />
                </f:facet>
                <h:outputText value="#{patient.dateOfBirth}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Patient ID" />
                </f:facet>
                <h:outputText value="#{patient.patientId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Doctor ID" />
                </f:facet>
                <h:outputText value="#{patient.doctor.doctorId}" />
            </h:column>
        </h:dataTable>
    </h:form>
</div>

</body>
</html>
</f:view>
