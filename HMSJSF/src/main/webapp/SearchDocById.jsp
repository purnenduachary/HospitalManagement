<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
<meta charset="UTF-8">
<title>Search Doctor by ID</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
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
        margin-left: 15px;
        padding: 6px 15px;
        border-radius: 4px;
        background-color: #007bff;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #0056b3;
    }

    .container {
        max-width: 800px;
        margin: 40px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    .form-group {
        margin-bottom: 20px;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 25px;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    td {
        background-color: #e9f5ff;
    }
</style>
</head>
<body>

<nav>
    <a href="DoctorDashBoard.jsf">Doctor Dashboard</a>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="container">
    <h2>Search Doctor by ID</h2>

    <h:form>
        <h:messages globalOnly="true" style="color:red; font-weight:bold;" />

        <div class="form-group">
            <h:outputLabel for="doctorId" value="Doctor ID:" />
            <h:inputText id="doctorId" value="#{doctorController.doctorId}" />
            <h:commandButton value="Search" action="#{doctorController.getDoctorById}" />
        </div>

        <h:dataTable value="#{doctorController.doctor}" var="doctor"
                     border="1" cellpadding="5" cellspacing="0">

            <h:column>
                <f:facet name="header"><h:outputText value="Doctor ID" /></f:facet>
                <h:outputText value="#{doctor.doctorId}" />
            </h:column>

            <h:column>
                <f:facet name="header"><h:outputText value="Doctor Name" /></f:facet>
                <h:outputText value="#{doctor.doctorName}" />
            </h:column>

            <h:column>
                <f:facet name="header"><h:outputText value="Specialization" /></f:facet>
                <h:outputText value="#{doctor.specialization}" />
            </h:column>

            <h:column>
                <f:facet name="header"><h:outputText value="Status" /></f:facet>
                <h:outputText value="#{doctor.isStatus}" />
            </h:column>

            <h:column>
                <f:facet name="header"><h:outputText value="Location" /></f:facet>
                <h:outputText value="#{doctor.location}" />
            </h:column>

            <h:column>
                <f:facet name="header"><h:outputText value="Mobile No" /></f:facet>
                <h:outputText value="#{doctor.mobileNo}" />
            </h:column>

        </h:dataTable>
    </h:form>
</div>

</body>
</html>
</f:view>
