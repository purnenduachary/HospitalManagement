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
            max-width: 900px;
            margin: 50px auto;
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
            text-align: center;
        }

        h:inputText, input[type="text"] {
            width: 200px;
            padding: 8px 12px;
            border: 1px solid #fbbf24; /* amber-400 */
            border-radius: 8px;
            transition: border-color 0.3s ease;
        }

        h:inputText:focus, input[type="text"]:focus {
            border-color: #b45309; /* amber-800 */
            outline: none;
        }

        h:commandButton {
            padding: 10px 25px;
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
        }

        h:commandButton:hover {
            background-color: #b45309; /* amber-800 */
            color: #fff7ed;
            box-shadow: 0 12px 25px rgba(180,83,9,0.6);
            transform: translateY(-3px) scale(1.05);
        }

        table {
            margin: 30px auto 0;
            border-collapse: collapse;
            width: 100%;
            max-width: 850px;
            user-select: text;
        }

        th, td {
            padding: 12px 18px;
            border: 1px solid #fbbf24; /* amber-400 */
            text-align: center;
            color: #7c2d12; /* amber-900 */
        }

        th {
            background-color: #fbbf24; /* amber-400 */
            font-weight: 700;
            color: #fff7ed;
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
    <a href="MedHisDashBoard.jsf">Medication Dashboard</a>
</nav>

<div class="container">
    <h2>Search Patient Medication History</h2>

    <h:form>
        <h:messages globalOnly="true" style="color:#b45309; font-weight:bold;" />

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
