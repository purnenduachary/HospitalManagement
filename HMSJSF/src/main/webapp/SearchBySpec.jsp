<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<center>
	<f:view>
		<html>
<head>
<meta charset="UTF-8">
       <h2>Search By Specialization</h2>
<title>Search Doctor By Specialization</title>
</head>
<body>
	<%-- <jsp:include page="Menu.jsp" />--%>

	<h:form>
		<!-- Dropdown for Specialization -->
		<h:selectOneMenu id="specialization"
			value="#{doctorController.specializations}" onchange="submit()"
			valueChangeListener="#{doctorController.specializationChanged}">
			<f:selectItem itemLabel="--Select Specialization--" itemValue="" />
			<f:selectItem itemLabel="HEART" itemValue="HEART" />
			<f:selectItem itemLabel="SKIN" itemValue="SKIN" />
			<f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
			<f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
		</h:selectOneMenu>

		<br />
		<br />

		<h:outputLabel value="Selected Specialization: " />
		<h:outputText value="#{doctorController.specializations}" />

		<br />
		<br />

		<!-- Doctor Table -->
		<h:dataTable id="doctorTable" value="#{doctorController.doctorlist}"
			var="doctor" border="2">

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
</body>
		</html>
	</f:view>
</center>