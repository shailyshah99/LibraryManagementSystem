<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
<form action="ProductController" method="post">
		<table border="1px">
			<tr>
				<td>Book Name ::</td>
				<td><input type="text" name="pname" /></td>
			</tr>
			<tr>
				<td>Book Category :</td>
				<td><input type="text" name="category" /> </td>
				<tr>
				<td>Book Price :</td>
				<td><input type="text" name="price" /> 
				</tr>
				<input type="hidden"
					name="flag" value="insert"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</table><br>
		
	</form><br>
</body>
</html>