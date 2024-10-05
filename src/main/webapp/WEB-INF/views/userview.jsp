<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		Id : ${user.id} <br>
		Age : ${user.age} <br>
		Name : ${user.name} <br>
		Gender : ${user.gender} <br>
		<%-- <c:forEach var="fr" items="${user.frameworks}">
			${fr}
		</c:forEach> --%>
		${user.frameworks}
		<br>
		<c:if test="${user.number == 1}">
		Number 1
		</c:if>
		${user.country}
		
	
	
	
</body>
</html>