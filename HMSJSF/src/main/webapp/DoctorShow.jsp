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
        margin: 0; padding: 0;
        background: #f9f9f9;
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
    .content-center {
        max-width: 900px;
        margin: 40px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
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

        <h:dataTable value="#{doctorController.showDoctors()}" var="doc"
            border="1" cellpadding="5" cellspacing="0" style="width:100%;">

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
