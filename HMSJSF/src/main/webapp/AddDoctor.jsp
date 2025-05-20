<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>
<style>
    body {
        font-family: Arial;
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
        max-width: 600px;
        margin: 40px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input, select {
        width: 100%;
        padding: 8px;
        font-size: 14px;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
    }
</style>
</head>
<body>

<nav>
    <a href="DoctorDashBoard.jsf">Doctor Dashboard</a>
    <a href="HomePage.jsf">Home</a>
</nav>

<div class="container">
    <h2>Add Doctor</h2>

    <h:form>
        <div class="form-group">
            <h:outputLabel for="doctorName" value="Doctor Name" />
            <h:inputText id="doctorName" value="#{doctor.doctorName}" />
        </div>

        <div class="form-group">
            <h:outputLabel for="specialization" value="Specialization" />
            <h:selectOneMenu id="specialization" value="#{doctor.specialization}">
                <f:selectItem itemLabel="--Select--" itemValue="" />
                <f:selectItem itemLabel="HEART" itemValue="HEART" />
                <f:selectItem itemLabel="SKIN" itemValue="SKIN" />
                <f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
                <f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
            </h:selectOneMenu>
        </div>

        <div class="form-group">
            <h:outputLabel for="location" value="Location" />
            <h:inputText id="location" value="#{doctor.location}" />
        </div>

        <div class="form-group">
            <h:outputLabel for="mobileNo" value="Mobile No" />
            <h:inputText id="mobileNo" value="#{doctor.mobileNo}" />
        </div>

        <div class="form-group">
            <h:commandButton value="Add Doctor"
                action="#{doctorController.addDoctors(doctor)}" />
        </div>

        <h:messages globalOnly="true" layout="table" style="color:green;" />
    </h:form>
</div>

</body>
</html>
</f:view>
