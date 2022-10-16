<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Employee Info</h2>
<br>
<form:form action="saveEmployee" modelAttribute="employee">
    <form:hidden path="id"></form:hidden>
    <label>Name</label><form:input path="name"></form:input>
    <BR> <br>
    <label>Surname</label><form:input path="surname"></form:input>
    <BR> <br>
    <label>Department</label><form:input path="department"></form:input>
    <BR> <br>
    <label>Salary</label><form:input path="salary"></form:input>
    <br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>