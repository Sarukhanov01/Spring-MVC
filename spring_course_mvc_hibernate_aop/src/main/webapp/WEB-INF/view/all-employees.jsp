<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<h2>All Employees</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
        <c:forEach var="employee" items="${allEmps}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="employeeId" value="${employee.id}"></c:param>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="employeeId" value="${employee.id}"></c:param>
            </c:url>
            <tr>
                <td>${employee.name}</td>
                <td>${employee.surname}</td>
                <td>${employee.department}</td>
                <td>${employee.salary}</td>
                <td> <input type="button" value="Update"  onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'" /></td>
            </tr>
        </c:forEach>
</table>
<br>
<form:form action="" >
    <input type="button" value="Add" onclick="window.location.href='addNewEmployee'" >
</form:form>

</body>
</html>
