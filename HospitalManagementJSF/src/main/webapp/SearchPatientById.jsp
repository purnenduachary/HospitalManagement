<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patient by ID</title>
    <style>
        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(135deg, #d1fae5, #a7f3d0); /* light green gradient */
        }

        nav {
            background-color: #047857; /* Emerald-700 */
            padding: 15px 30px;
            text-align: right;
            box-shadow: 0 4px 8px rgba(4,120,87,0.3);
            animation: fadeInUp 0.8s ease forwards;
        }

        nav a {
            color: #e6fffa; /* teal-50 */
            text-decoration: none;
            font-weight: 700;
            font-size: 16px;
            background-color: #10b981; /* Emerald-500 */
            padding: 10px 24px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            user-select: none;
            display: inline-block;
            margin-left: 10px;
        }

        nav a:hover {
            background-color: #059669; /* Emerald-600 */
            transform: translateX(6px);
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            text-align: center;
            animation: fadeInUp 1s ease forwards;
            animation-delay: 0.3s;
            opacity: 0;
            user-select: none;
        }

        h2 {
            color: #065f46; /* Emerald-900 */
            margin-bottom: 30px;
            font-weight: 700;
            font-size: 2rem;
        }

        .form-group {
            margin-bottom: 25px;
        }

        h:outputLabel, h:inputText, h:commandButton {
            font-size: 1rem;
        }

        h:inputText {
            padding: 8px 12px;
            border-radius: 8px;
            border: 1.5px solid #10b981;
            width: 60%;
            max-width: 300px;
            transition: border-color 0.3s ease;
        }

        h:inputText:focus {
            border-color: #059669;
            outline: none;
        }

        h:commandButton {
            background-color: #10b981;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 12px;
            cursor: pointer;
            font-weight: 700;
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
        }

        h:commandButton:hover {
            background-color: #059669;
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 10px 25px rgba(5,150,105,0.4);
        }

        table {
            margin: 20px auto;
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 6px 18px rgba(16,185,129,0.15);
            border-radius: 12px;
            overflow: hidden;
            animation: fadeInUp 1s ease forwards;
            animation-delay: 0.6s;
            opacity: 0;
        }

        h\\:dataTable[rendered="true"] table {
            opacity: 1 !important;
        }

        th, td {
            padding: 12px 20px;
            text-align: center;
        }

        th {
            background-color: #10b981;
            color: white;
            font-weight: 700;
        }

        td {
            background-color: #e9f5ef;
            color: #065f46;
        }

        h:messages {
            margin-bottom: 20px;
            font-weight: 700;
            color: #b91c1c; /* red for errors */
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
        <h:messages globalOnly="true" />

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
