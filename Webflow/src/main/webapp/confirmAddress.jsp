<%@taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm!</title>
</head>
<body>
==================================================================<br>
<a href="${flowExecutionUrl}&_eventId_home">Go to Home</a><br> 
==================================================================<br>
			<c:form modelAttribute="addressDetails">
				<c:label path="houseNo">House No :</c:label>${addressDetails.houseNo}
					<br />
				<br />
				<c:label path="laneNo"> Lane No:</c:label>${addressDetails.laneNo}
					<br />
				<br />
				<c:label path="location">Location :</c:label>${addressDetails.location}
					<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</c:form>

</body>
</html>