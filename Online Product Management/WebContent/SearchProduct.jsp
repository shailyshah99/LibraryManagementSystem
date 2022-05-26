<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Book</title>
</head>
<body>

<button><a href="header.jsp">Home</a></button><br><br>
<form action="ProductController" method=post>
 <input type="search" name="search">
<input type='hidden' name='flag' value='search'>
<input type="submit">
</form><br><br>
<table border="1px solid black">
	<thead>
	
		<td>Book ID</td>
		<td>Book Name</td>
		<td>Book Category</td>
		<td>Book Price</td>
		<td>Action</td>
		<td>Action</td>
		
	</thead>
	<c:forEach var="i" items="${sessionScope.list}" varStatus="j">
		<tr align="center">
		<%-- <td>${j.count}</td> --%>
		
		<td>${i.id}</td>
		<td>${i.name}</td>
		<td>${i.category}</td>
		<td>${i.price}</td>
		<td><button>
						<a href='ProductController?id=${i.id}&flag=delete'>Delete</a>
					</button></td>
				<td><button>
						<a href='ProductController?id=${i.id}&flag=update'>Update</a>
					</button></td>
		
		</tr>
	</c:forEach>
	
</table><br>


</body>
</html>