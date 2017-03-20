<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DeltedItems</title>
<link rel="stylesheet" href="deletePage.css">
</head>
<body>
	<h2>Your shoe has been deleted.</h2>

	<p>
		Return to the sorted lists by clicking one of the brands below, or
		click "return" to receive a list of all shoes.</p>
<form id="button" action="returnToResults.do" method="GET"><button type="submit" name="name" value="${shoe.name}"><span>Return</span></button></form>
	

	<div>
		<table class="logos">
		<tr>
			<td style="padding: 0; padding-left: 5%;" id="Asics"><a
				href="GetShoeData.do?brand=Asics"> <img src="ShoePics/Asics.png"
					alt="OnisukaTiger" width="40px" height="80px"></a></td>
			<td style="padding: 0; padding-left: 5%;" id="Brooks"><a
				href="GetShoeData.do?brand=Brooks"> <img
					src="ShoePics/Brooks.png" alt="RunHappy" width="60px" height="30px"></a>
			</td>
			<td style="padding: 0; padding-left: 5%;" id="NB"><a
				href="GetShoeData.do?brand=New Balance"> <img
					src="ShoePics/NBLogo.png" alt="AlwaysInBeta" width="40px"
					height="65px">
			</a></td>
			<td style="padding: 0; padding-left: 5%;"id ="Nike"><a
				href="GetShoeData.do?brand=Nike"> <img id="Swoosh"
					src="ShoePics/Nike.png" alt="Swoosh" width="100px" height="130px"
					align="top"></a></td>
			<td style="padding: 0; padding-left: 5%;"id="Saucony"><a
				href="GetShoeData.do?brand=Saucony"><img
					src="ShoePics/Saucony.png" alt="FindYourStrong" width="100px"
					height="30px"></a></td>
		</tr>
		</table>
	</div>
</html>
