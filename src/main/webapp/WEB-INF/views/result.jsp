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
	<div id="Top">
		<ul>
			<li class="single"><a href="returnToResults.do">Home</a></li>
			<li class=dropdown><a href="javascript:void(0)" class="dropbtn">Run
					Category</a>
				<div class="dropdown-content">
					<a href="GetShoeData.do?type=Neutral">Neutral</a> <a
						href="GetShoeData.do?type=Stability">Stability</a>
				</div>
			<li class=dropdown><a href="javascript:void(0)" class="dropbtn">Run
					Style</a>
				<div class="dropdown-content">
					<a href="GetShoeData.do?run=Run Fast">Run Fast</a> <a
						href="GetShoeData.do?run=Run Far">Run Far</a> <a
						href="GetShoeData.do?run=Run Stable">Run Stable</a> <a
						href="GetShoeData.do?run=Run True">Run True</a>
				</div></li>
			<li class=dropdown><a href="javascript:void(0)" class="dropbtn">Add
					Shoe</a>
				<div class="dropdown-content">
					<a href="addShoeForm.do?type=Neutral">Neutral</a> <a
						href="addShoeForm.do?type=Stability">Stability</a>
				</div></li>
			<li class="single"><a
				href=http://www.brooksrunning.com/en_us/ShoeFinder>Find Your
					Running Style</a>
		</ul>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="result">
		<table>
			<tr>
				<th>Brand</th>
				<th>Name</th>
				<th>Type</th>
				<th>Run</th>
			</tr>
			<c:choose>
				<c:when test="${! empty shoes}">
					<c:forEach items="${shoes}" var="shoe">
						<tr>
							<td>${shoe.brand}</td>
							<td>${shoe.name}</td>
							<td>${shoe.type}</td>
							<td>${shoe.run}</td>
							<td id="shoe"><img src="ShoePics/${shoe.picture}"
								width="250px" height="150px"></td>
							<td>
								<form action="DeleteShoe.do" method="POST">
									<button type="submit" name="name" value="${shoe.name }">Remove
										Shoe</button>
								</form>
							</td>
							<td><form action="EditShoeForm.do" method="POST">
									<button type="submit" name="name" value="${shoe.name }">Edit
										Shoe</button>
								</form></td>
						</tr>

					</c:forEach>
				</c:when>
			</c:choose>
		</table>
	</div>

	<div>
		<table class="logos" style="padding: 0; padding-left: 5%;">
			<tr>
				<td style="padding: 0; padding-left: 5%;" id="Asics"><a
					href="GetShoeData.do?brand=Asics"> <img
						src="ShoePics/Asics.png" alt="OnisukaTiger" width="100px"
						height="160px"></a></td>
				<td style="padding: 0; padding-left: 5%;" id="Brooks"><a
					href="GetShoeData.do?brand=Brooks"> <img
						src="ShoePics/Brooks.png" alt="RunHappy" width="100px"
						height="160px"></a></td>
				<td style="padding: 0; padding-left: 5%;" id="NB"><a
					href="GetShoeData.do?brand=New Balance"> <img
						src="ShoePics/NBLogo.png" alt="AlwaysInBeta" width="100px"
						height="160px">
				</a></td>
				<td style="padding: 0; padding-left: 5%;" id="Nike"><a
					href="GetShoeData.do?brand=Nike"> <img id="Swoosh"
						src="ShoePics/Nike.png" alt="Swoosh" width="100px" height="160px"
						align="top"></a></td>
				<td style="padding: 0; padding-left: 5%;" id="Saucony"><a
					href="GetShoeData.do?brand=Saucony"><img
						src="ShoePics/Saucony.png" alt="FindYourStrong" width="100px"
						height="160px"></a></td>
			</tr>
		</table>
	</div>

</body>
</html>