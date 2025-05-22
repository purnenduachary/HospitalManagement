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
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #dbeafe, #f0f9ff);
        margin: 0;
        padding: 0;
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
        display: inline-flex;
        align-items: center;
        gap: 6px;
        user-select: none;
    }

    nav a:hover {
        background-color: #4f46e5; /* Indigo-600 */
    }

    .container {
        max-width: 600px;
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

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: 600;
        margin-bottom: 8px;
        color: #4f46e5; /* Indigo-600 */
        font-size: 1rem;
    }

    input, select {
        width: 100%;
        padding: 10px 12px;
        font-size: 15px;
        border: 2px solid #c7d2fe; /* Indigo-200 */
        border-radius: 10px;
        outline-offset: 2px;
        transition: border-color 0.3s ease;
        font-family: Arial, sans-serif;
    }

    input:focus, select:focus {
        border-color: #4f46e5; /* Indigo-600 */
        outline: none;
        box-shadow: 0 0 6px #4f46e5aa;
    }

    h:commandButton {
        width: 100%;
        padding: 12px 0;
        font-weight: 700;
        font-size: 18px;
        border-radius: 14px;
        border: none;
        cursor: pointer;
        background-color: #4f46e5; /* Indigo-600 */
        color: white;
        transition: background-color 0.3s ease;
        user-select: none;
    }

    h:commandButton:hover {
        background-color: #4338ca; /* Indigo-700 */
    }

    h:messages {
        margin-top: 25px;
        display: block;
        text-align: center;
        color: #16a34a; /* Green-600 */
        font-weight: 600;
        font-size: 1rem;
        user-select: none;
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

        <h:messages globalOnly="true" layout="table" />
    </h:form>
</div>

</body>
</html>
</f:view>
