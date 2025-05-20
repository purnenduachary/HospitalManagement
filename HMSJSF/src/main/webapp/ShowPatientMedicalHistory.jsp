<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Patient Medical History</title>
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
            max-width: 900px;
            margin: 50px auto;
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
        }

        table {
            margin-top: 30px;
        }

        th, td {
            padding: 10px 15px;
        }
    </style>
</head>
<body>

<nav>
    <a href="HomePage.jsf">Home</a>
    <a href="MedHisDashBoard.jsf">Medication Dashboard</a>
</nav>

<div class="container">
    <h2>Search Patient Medication History</h2>

    <h:form>
        <h:messages globalOnly="true" style="color:red; font-weight:bold;" />

        <div class="form-group">
            <h:outputLabel for="patientId" value="Patient ID:" />
            <h:inputText id="patientId" value="#{doctorController.patientId}" />
            <br/><br/>
            <h:commandButton value="Search" action="#{doctorController.getMedicationHistoryByPatientId}" />
        </div>
        
        <center>
        <h:dataTable value="#{doctorController.medList}" var="med" border="1"
                     rendered="#{not empty doctorController.medList}">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Medication ID" />
                </f:facet>
                <h:outputText value="#{med.medId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Patient ID" />
                </f:facet>
                <h:outputText value="#{med.patient.patientId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Medicines" />
                </f:facet>
                <h:outputText value="#{med.medicines}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Tests" />
                </f:facet>
                <h:outputText value="#{med.tests}" />
            </h:column>

        </h:dataTable>
        </center>
    </h:form>
</div>

</body>
</html>
</f:view>
