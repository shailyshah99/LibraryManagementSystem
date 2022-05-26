<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>
	  <header>
        <!-- <a href="#" class="logo"><img src="images/logo2.jpg" alt=""></a> -->
        <h1 class="mainh">Library Management System</h1>
        <ul class="navigation" >
            <li><a href="header.jsp"><h1>HOME</h1></a></li>
            <li><a href="AddProduct.jsp"><h1>ADD</h1></a></li>
            <li><a href="ViewProduct.jsp"><h1>VIEW</h1></a></li>
            <li><a href="SearchProduct.jsp"><h1>SEARCH</h1></a></li>
        	   <li ><a href="logout.jsp"><h1>LOGOUT</h1></a></li>
		
         </ul>
    </header>

<!-- ------------- -->
   <div class="banner ">
        <img src="1.jpg" alt="">
        </div>
    </div>

    
    <!-- ====================== -->
    <footer>
        <div class="container">
          <div class="sec aboutus">
            <h2>About Us</h2>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam
              voluptatum velit incidunt libero est veniam ipsam cumque ipsum cum
              cupiditate, mollitia optio doloremque.</p>
              <ul class="sci">
                  <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                  <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
              </ul>
          </div>
          <div class="sec quickLinks">
            <h2>Quick Links</h2>
            <ul>
              <li><a href="#">About</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Help</a></li>
              <li><a href="#">Terms & Conditions</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <div class="sec contact">
            <h2>Contact Info</h2>
            <ul class="info">
              <li> 
                <span><i class="fa-solid fa-location-dot"></i></span>
                <span>L.D. COLLEGE OF ENGINEERING <br>
                Navrangpura <br>Ahmedabad - 380009</span>
              </li>
              <li>
                <span><i class="fa-solid fa-phone"></i></span>
                <p><a href="tel: 7041465481 ">+91 7041465481</a><br>
                  <a href="+91 9558527798">+91 9558527798</a></p>
              </li>
              <li>
                <span><i class="fa-solid fa-envelope"></i></span>
                <p><a href="mailto:knowmore@email.com">knowmore@email.com</a></p>
              </li>
              
            </ul>
          </div>
        </div>
      </footer>


</body>
</html>
  