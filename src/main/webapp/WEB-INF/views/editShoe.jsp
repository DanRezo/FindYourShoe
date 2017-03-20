<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shoe Editor</title>
</head>
<body>
	<h1>Shoe Editor</h1>
	<p>Change the parameters that you'd like and then save.
	<form action="EditShoe.do" method="POST">
		<ul style="list-style: none;">
			<li><input type="text" name="brand" value="${shoe.brand }" /></li>
			<li><input type="text" name="name" value="${shoe.name }" /></li>
			<li><input type="text" name="type" value="${shoe.type }" /></li>
			<li><input type="text" name="run" value="${shoe.run }" /></li>
			<li><input type="hidden" name="picture" value="${shoe.picture }" /></li>
			<li><img src="ShoePics/${shoe.picture}" width="300px"
				height="230px" /></li>
			<li><input type="submit" value="Submit" /></li>
		</ul>
	</form>

</body>
</html>