<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Search Doctor By Specialization</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #dbeafe, #f0f9ff);
        }
        nav {
            background-color: #4338ca; /* Indigo-700 */
            padding: 10px 20px;
            text-align: right;
            box-shadow: 0 4px 8px rgba(67,56,202,0.3);
        }
        nav a {
            color: white;
            font-weight: 600;
            font-size: 16px;
            text-decoration: none;
            margin-left: 15px;
            padding: 6px 15px;
            border-radius: 6px;
            background-color: #6366f1; /* Indigo-400 */
            transition: background-color 0.3s ease;
            user-select: none;
        }
        nav a:hover {
            background-color: #4f46e5; /* Indigo-600 */
        }
        .container {
            max-width: 800px;
            margin: 40px auto;
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: 700;
            font-size: 2rem;
            color: #4f46e5; /* Indigo-600 */
            user-select: none;
        }
        .form-group {
            margin: 20px 0;
            text-align: center;
        }
        h\\:selectOneMenu {
            width: 60%;
            padding: 8px 10px;
            font-size: 15px;
            border: 1.5px solid #c7d2fe; /* Indigo-200 */
            border-radius: 6px;
            transition: border-color 0.3s ease;
            outline: none;
            cursor: pointer;
        }
        h\\:selectOneMenu:focus {
            border-color: #4f46e5; /* Indigo-600 */
        }
        h\\:outputText {
            font-weight: 600;
            color: #3730a3; /* Indigo-800 */
            user-select: none;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
            font-size: 15px;
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #e0e7ff; /* Indigo-100 */
        }
        th {
            background-color: #6366f1; /* Indigo-400 */
            color: white;
            font-weight: 600;
            user-select: none;
        }
        td {
            background-color: #eef2ff; /* Indigo-50 */
        }
        tr:hover td {
            background-color: #dbeafe; /* Indigo-100 */
        }
    </style>
</head>
<body>

<nav>
    <a href="DoctorDashBoard.jsf">Doctor Dashboard</a>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="container">
    <h2>Search by Specialization</h2>

    <h:form>
        <div class="form-group">
            <h:selectOneMenu id="specialization"
                             value="#{doctorController.specializations}"
                             onchange="submit()"
                             valueChangeListener="#{doctorController.specializationChanged}">
                <f:selectItem itemLabel="--Select Specialization--" itemValue="" />
                <f:selectItem itemLabel="HEART" itemValue="HEART" />
                <f:selectItem itemLabel="SKIN" itemValue="SKIN" />
                <f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
                <f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
            </h:selectOneMenu>
        </div>

        <div class="form-group">
            <h:outputLabel value="Selected Specialization: " />
            <h:outputText value="#{doctorController.specializations}" />
        </div>

        <h:dataTable id="doctorTable" value="#{doctorController.doctorlist}" var="doctor">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Doctor ID" />
                </f:facet>
                <h:outputText value="#{doctor.doctorId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Name" />
                </f:facet>
                <h:outputText value="#{doctor.doctorName}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Specialization" />
                </f:facet>
                <h:outputText value="#{doctor.specialization}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Location" />
                </f:facet>
                <h:outputText value="#{doctor.location}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Mobile No" />
                </f:facet>
                <h:outputText value="#{doctor.mobileNo}" />
            </h:column>

        </h:dataTable>
    </h:form>
</div>

</body>
</html>
</f:view>
