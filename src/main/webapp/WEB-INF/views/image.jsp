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
	<h2>Upload Image</h2>
    <form:form method="post" action="uploadImage" enctype="multipart/form-data">
        <label for="name">Name:</label>
        <input type="text" name="name"/><br/><br/>
        
        <label for="file">Choose Image:</label>
        <input type="file" name="imageFile"/><br/><br/>
        
        <input type="submit" value="Upload">
    </form:form>
</body>
</html>