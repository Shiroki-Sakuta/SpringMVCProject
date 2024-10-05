<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.error
{
	color: red;
}

</style>
</head>
<body>
	<form:form modelAttribute="userObj" action="adduser" method="post">
		Id<form:input path="id"/>
		<td><form:errors path="id" cssClass="error" /></td><br>
		Age<form:input path="age"/>
		<td><form:errors path="age" cssClass="error" /></td><br>
		Name<form:input path="name"/>
		<td><form:errors path="name" cssClass="error" /></td><br>		
		Gender
		
		Male<form:radiobutton path="gender" value="male"/>
		Female<form:radiobutton path="gender" value="female"/><br>
		Frameworks
		<form:checkboxes items="${frameworks}" path="frameworks"/> <br>
		Number
		<form:radiobuttons path="number" items="${numList}"/><br>
		Country
		<form:select path="country" items="${list}" multiple="multiple"></form:select>
		
		<input type="submit" value="add">
	</form:form>
</body>
</html>