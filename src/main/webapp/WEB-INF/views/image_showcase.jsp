<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Uploaded Images</h2>
    <c:forEach var="image" items="${imageList}">
        <div>
            <p>${image.name}</p>
            <img src="data:image/jpeg;base64,${image.base64Image}" width="200px" height="200px"/>
        </div>
    </c:forEach>
</body>
</html>