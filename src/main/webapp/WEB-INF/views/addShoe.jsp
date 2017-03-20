<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Shoe</title>
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
			<li class=dropdown><a href="javascript:void(0)" class="dropbtn">Add Shoe</a>
				<div class="dropdown-content">
					<a href="addShoeForm.do?type=Neutral">Neutral</a> <a
						href="addShoeForm.do?type=Stability">Stability</a>
				</div></li>
			<li class="single"><a
				href=http://www.brooksrunning.com/en_us/ShoeFinder>Find Your
					Running Style</a>
		</ul>
	</div>
	<h1>New Shoe Addition</h1>
	<p>Be sure to to fill out all of the fields</p>
	<br>
	<form action="NewShoe.do" method="POST">
		Brand Name:<input type="text" name="brand" /> Name Your Shoe:<input
			type="text" name="name" />
			<input type="hidden" name="type" value="${type}" />
		<c:choose>
			<c:when test="${type == 'Neutral'}">
				<select name="run">
					<option name="run" value="Run Fast">Run Fast</option>
					<option name="run" value="Run Far">Run Far</option>
				</select>
			</c:when>
			<c:otherwise>
				<select name="run">
					<option name="run" value="Run Stable">Run Stable</option>
					<option name="run" value="Run True">Run True</option>
				</select>
			</c:otherwise>
		</c:choose>
		<!-- <option name="type" value="Stability">Stability</option>
		</select>
			<select name="run">
			<option name="run" value="Run Fast">Run Fast</option>
			<option name="run" value="Run Far">Run Far</option>
			<option name="run" value="Run Stable">Run Stable</option>
			<option name="run" value="Run True">Run True</option>
		</select> -->
		<input type="submit" value="Submit" />
	</form>
	
</body>
</html>