<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Book</title>
</head>
<body>
    <sql:setDataSource var = "snapshot" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/Product_Management"
         user = "root"  password = "manager"/>
<button><a href="header.jsp">Home</a></button><br><br>
 <sql:query dataSource = "${snapshot}" var = "result">
         Select * from product;
      </sql:query>
   
    <table border = "1" width = "100%">
	<thead>
	
		<td>Book ID</td>
		<td>Book Name</td>
		<td>Book Category</td>
		<td>Book Price</td>
		
		
	</thead>
<!-- 	<c:forEach var="i" items="${result.rows}" varStatus="j">
		<tr align="center">
		<%-- <td>${j.count}</td> --%>
		
		<td>${i.id}</td>
		<td>${i.name}</td>
		<td>${i.category}</td>
		<td>${i.price}</td>
		
		
		</tr>
	</c:forEach>  -->

	   <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.product_id}"/></td>
            
               <td><c:out value = "${row.product_name}"/></td>
               <td><c:out value = "${row.product_category}"/></td>
               <td><c:out value = "${row.product_price}"/></td>
            </tr>
         </c:forEach>  

</table>
</body>
</html>