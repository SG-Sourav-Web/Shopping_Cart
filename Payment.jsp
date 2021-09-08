<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Seymour+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Myaccount.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Payment | S-cart</title>
<style>
.mySlides {display:none;}
</style>
<body>
	<%  String email = (String)session.getAttribute("email");
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
				PreparedStatement ps=con.prepareStatement("delete from cart where email=?");
				ps.setString(1, email);
				ps.executeUpdate();
			}
		catch(Exception e){
				System.out.println(e);
			}%>
	<header>
		<div class="logo">
			<div style="color: red; font-family: 'Seymour One', sans-serif; font-size: 48px;">S</div>
			<div style="color:green; font-family:'Seymour One', sans-serif; font-size: 48px;">-</div>
			<div style="color: blue; font-family: 'Seymour One', sans-serif; font-size: 48px;">c</div>
			<div style="color: rgb(226, 226, 89); font-family: 'Seymour One', sans-serif; font-size: 48px;">a</div>
			<div style="color: orange; font-family: 'Seymour One', sans-serif; font-size: 48px;">r</div>
			<div style="color: skyblue; font-family: 'Seymour One', sans-serif; font-size: 48px;">t</div>
		</div>
		<div class="head">
			<ul>
			<li><a href=""><i class="fa fa-handshake-o" style="color: black;"></i> Help and Support</a></li>
			<li><a href=""><i class="fa fa-bell-o" style="color: black;"></i> Notification</a></li>
			</ul>
		</div>
	</header>
	<div class="w3-content w3-section" style="max-width:500px">
  		<img class="mySlides w3-animate-top" src="https://media.giphy.com/media/12PfUj30bGF2De/giphy.gif" style="width:100%; top:100px;">
  		<img class="mySlides w3-animate-right" src="https://www.cntraveller.in/wp-content/themes/cntraveller/images/check-circle.gif" style="width:100%; top:70px;">
	</div>

	<script>
		var myIndex = 0;
		carousel();
	
		function carousel() {
		  	var i;
		  	var x = document.getElementsByClassName("mySlides");
		  	for (i = 0; i < x.length; i++) {
		    	x[i].style.display = "none";  
		  	}
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(carousel, 2000);    
			}
	</script>
<%response.setHeader("Refresh", "3.6;url=Home.jsp"); %>
</body>
</html>