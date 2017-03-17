<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find Your Fit</title>
<link rel="stylesheet" href="resultStyle.css">
</head>
<body>
	<div>
		<ul class="Nav">
			<li class="Bar"><a href="GetShoeData.do?brand=Asics"><img
					src="ShoePics/Asics.png" alt="OnisukaTiger"></a></li>
			<li class="Bar"><a href="GetShoeData.do?brand=Brooks"><img
					src="ShoePics/Brooks.png" alt="RunHappy"></a></li>
			<li class="Bar"><a href="GetShoeData.do?brand=New Balance"><img
					src="ShoePics/NBLogo.png" alt="AlwaysInBeta"></a></li>
			<li class="Bar"><a href="GetShoeData.do?brand=Nike"><img id="Swoosh"
					src="ShoePics/Nike.png" alt="Swoosh"></a></li>
			<li class="Bar"><a href="GetShoeData.do?brand=Saucony"><img
					src="ShoePics/Saucony.png" alt="RunHappy"></a></li>
		</ul>
	</div><br><br>
<br><br><br>	<c:choose>
		<c:when test="${! empty shoes}">
			<c:forEach items="${shoes}" var="shoe">
				<ul>
					<li>${shoe.brand}</li>
					<li>${shoe.name}</li>
					<li>${shoe.type}</li>
					<li>${shoe.run}</li>
					<li><img src="ShoePics/${shoe.picture}"></li>
					<li>
						<form action="DeleteShoe.do" method="POST">
							<button type="submit" name="name" value="${shoe.name }">Remove
								Shoe</button>
						</form>
					</li>
				</ul>
			</c:forEach>
			<form action="NewShoe.do" method="POST">
				Name Your Shoe:<input type="text" name="name" /> <select
					name="Type of Run">
					<option value="RunFast">Run Fast</option>
					<option value="RunFar">Run Far</option>
					<option value="RunStable">Run Stable</option>
					<option value="RunTrue">Run True</option>
				</select> <select name="Running Style">
					<option value="Neutral">Neutral</option>
					<option value="Stability">Stability</option>
				</select> <input type="hidden" name="brand" value="${shoes[0].brand }" /> <input
					type="submit" value="Submit" />
			</form>
		</c:when>
		<c:otherwise>
			<p>No shoe found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>
