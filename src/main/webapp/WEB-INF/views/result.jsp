<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find Your Fit</title>
</head>
<body>

	<c:choose>
		<c:when test="${! empty shoe}">
			<ul>
				<li>${shoe.brand}</li>
				<li>${shoe.name}</li>
				<li>${shoe.type}</li>
				<li>${shoe.run}</li>
				<li><img src="ShoePics/${shoe.picture}"></li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No shoe found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>
</body>
</html>

