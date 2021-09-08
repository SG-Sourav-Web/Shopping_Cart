<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Seymour+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Myaccount.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>MyAccount | S-cart</title>
</head>
<body>
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
		<div class="acc_cart">
			<a href="Cart.jsp"><button class="cart"><i class="fa fa-shopping-cart"></i> My cart</button></a>
		</div>
	</header>
	<nav>
		<a href="Home.jsp"><i class="fa fa-home"></i> Home</a>
		<a href="Fashion.jsp"><i class="fa fa-suitcase"></i> Fashion</a>
		<a href="Medicine.jsp"><i class="fa fa-medkit"></i> Medicine</a>
		<a href="Electronics.jsp"><i class="fa fa-tv"></i> Electronic</a>
		<a href="Mobile.jsp"><i class="fa fa-phone"></i> Mobile</a>
		<a href="Home-app.jsp"><i class="fa fa-plug"></i> Home-appliances</a>
	</nav>
	<%
	String email = (String)session.getAttribute("email");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from users where email='"+email+"'");
		while (rs.next()) {
	%>
	<div>
		<i class="fa fa-user" style="color: rgb(187, 187, 187); margin: 20px; font-size: 400px; display: flex;"> 
			<span style="font-size: 30px; justify-content: flex-start; color: darkslateblue; margin: 50px;"> Name: <%=rs.getString(1)%>
				<br><br><br> Email: <%=rs.getString(2)%><br><br><br> Phone: <%=rs.getString(3)%><br><br><br></span></i>
	</div>
	<%
	}
	}
	catch(Exception ex){
		System.out.println(ex);
	}%>
	<a href="Login.jsp"><button style=" background-color: rgb(255, 123, 0); padding: 5px; transform: translate(50vw); font-size: 20px; border-radius: 15px;">
		<i class="fa fa-arrow-circle-left" style="color: white;"></i> Log Out</button></a>

</body>
</html>