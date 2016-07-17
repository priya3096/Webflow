<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address!</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
===============================================================================<br>
<a href="${flowExecutionUrl}&_eventId_home">Go to Home</a><br>
===============================================================================<br>
<form:form modelAttribute="addressDetails">
				<br><br>
				<form:label path="houseNo">House No:</form:label>
				<form:input path="houseNo" />
				
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('houseNo')}"
					var="err">
					<div>
						<span style="color: red">${err.text}</span>
					</div>
				</c:forEach>
				<br><br>
				<form:label path="laneNo">Lane No:</form:label>
				<form:input path="laneNo" />
				
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('laneNo')}"
					var="err">
					<div>
						<span style="color: red">${err.text}</span>
					</div>
				</c:forEach>
				<br><br>
				<form:label path="location">Location:</form:label>
				<form:input type="text" path="location" />
				
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('location')}"
					var="err">
					<div>
						<span style="color: red">${err.text}</span>
					</div>
				</c:forEach>			
				<br /><br>
					<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
			</form:form>

</body>
</html>