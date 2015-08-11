
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<script data-require="angular.js@1.4.3" data-semver="1.4.3" src="https://code.angularjs.org/1.4.3/angular.js"></script>


<link href='<c:url value="/resources/style.css" />' rel='stylesheet'>
<script src='<c:url value="/resources/script.js" />'></script>
<script src='<c:url value="/resources/app.js" />'></script>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Employee Registration Form</title>

<style>

	.error {
		color: #ff0000;
	}
</style>

</head>



<body ng-app="EmployeeViewer" ng-controller="mainContoller">
<div>

<input type="search" placeholder="search employee" ng-model="ssn"/>
<input type="button" value="Search" ng-click="search(ssn)"/>

</div>
<div >
Welcome {{employees.name}}
</div>
<table >
<tr ng-repeat="emp in employees">
<td>
{{emp.name}}
</td>
<td>
{{emp.ssn}}
</td>
</tr>
</table>
</body>
</html>