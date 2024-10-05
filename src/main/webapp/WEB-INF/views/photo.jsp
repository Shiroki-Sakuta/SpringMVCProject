<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
    function validateFileSize(input) {
        var file = input.files[0];
        if (file.size > 10485760) { // 10MB in bytes
            alert("File size exceeds 10MB!");
            input.value = ''; // Clear the input
        }
    }
</script>
	<form:form modelAttribute="photoObj" action="AddPhoto" method="post" enctype="multipart/form-data">
		 <label for="name">Name:</label>
    	<form:input path="name" id="name" /><br/><br/>

    	<label for="photo">Upload Image:</label>
    	<form:input path="photo" name="img" type="file" accept="image/*" /><br/><br/>
		<input type="submit" value="Add">
	</form:form>
	
	<br/>
	<!-- Button to navigate to view uploaded images -->
	<form action="viewPhotos" method="get">
    	<button type="submit">View Uploaded Images</button>
	</form>
</body>
</html>