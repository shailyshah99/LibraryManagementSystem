<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<div align="center">
		<form action="prosessLogin.jsp" method="post">
			<table class="LoginForm">
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username"  class="searchTextField"/></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"  class="searchTextField"/></td>
				</tr>	
				<tr>
					<td colspan="2" align="center">
						<input type="Submit" value="Login" class="actionBtn"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>