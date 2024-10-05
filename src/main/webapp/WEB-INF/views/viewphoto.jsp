<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/style.css"> 
</head>
<body>
<h2>Uploaded Photos</h2>
<c:forEach var="photo" items="${photoList}">
	<div>
		 <div><img src="data:image/jpeg;base64,${photo.photoBase64}" alt="Photo" /><br/><br/></div>
     	 <p>Photo Name: ${photo.name}</p>
	</div>  
</c:forEach>
</body>
</html>