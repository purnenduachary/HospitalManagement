<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Show Doctors</title>
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
    .content-center {
        max-width: 900px;
        margin: 40px auto;
        background: white;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
        font-weight: 700;
        font-size: 2rem;
        color: #4f46e5; /* Indigo-600 */
        user-select: none;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        font-size: 15px;
    }
    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #e0e7ff; /* Indigo-100 */
    }
    th {
        background-color: #6366f1; /* Indigo-400 */
        color: white;
        font-weight: 600;
        user-select: none;
    }
    tr:hover {
        background-color: #eef2ff; /* Indigo-50 */
    }
</style>
</head>
<body>

<nav>
    <a href="DoctorDashBoard.jsf">Doctor Dashboard</a>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="content-center">
    <h:form>
        <h2>
            <h:outputText value="Doctor Records" />
        </h2>

        <h:dataTable value="#{doctorController.showDoctors()}" var="doc" styleClass="doctor-table" >

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Doctor ID" />
                </f:facet>
                <h:outputText value="#{doc.doctorId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Doctor Name" />
                </f:facet>
                <h:outputText value="#{doc.doctorName}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Specialization" />
                </f:facet>
                <h:outputText value="#{doc.specialization}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Location" />
                </f:facet>
                <h:outputText value="#{doc.location}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Mobile No" />
                </f:facet>
                <h:outputText value="#{doc.mobileNo}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputLabel value="Status" />
                </f:facet>
                <h:outputText value="#{doc.isStatus}" />
            </h:column>

        </h:dataTable>
    </h:form>
</div>

</body>
</html>
</f:view>
