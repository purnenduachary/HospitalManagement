<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
    <title>Add Patient</title>
</head>
<body>

<h2>Add New Patient</h2>

<h:form>
    <h:panelGrid columns="2" cellpadding="10">

        <h:outputLabel for="pname" value="Patient Name:" />
        <h:inputText id="pname" value="#{patient.patientName}" />

        <h:outputLabel for="dob" value="Date of Birth:" />
        <h:inputText id="dob" value="#{patient.dateOfBirth}" />

        <h:outputLabel for="did" value="Doctor ID:" />
        <h:inputText id="did" value="#{patient.doctor.doctorId}" />

    </h:panelGrid>

    <br/>
    <h:commandButton value="Add Patient" action="#{doctorController.addPatient}" />
</h:form>

</body>
</html>
</f:view>
