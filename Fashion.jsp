<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Seymour+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Category.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Fashion | S-cart</title>
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
		<div class="search">
			<form action="Search.jsp" method="post">
			<input type="text" name="search">
			<a href="Search.jsp"><button><i class="fa fa-search"></i> Search</button></a></form>
		</div>
		<%String name = (String)session.getAttribute("name"); %>
		<div class="acc_cart">
			<a href="Myaccount.jsp"><button class="user"><i class="fa fa-user"></i> <%out.print(name); %></button></a>
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
			int i = 0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from fashion");
				if (rs.next() && i == 0) {
				i = 1;
			%>
			<div style="display: flex;">
		<img class="cat_items" src="https://images-na.ssl-images-amazon.com/images/I/61hMQOHmEIL._UL1100_.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">Bouncer-05 Running shoes <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 40%;"><br><br><br><br><br><br>Price: Rs.459.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px;">Grey Colour<br> Size-10 </span>
	</div>
	<a href="Fashioncart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 1) {
				i = 2;
			%>
	<div style="display: flex;">
		<img class="cat_items" style="left: 2%;" src="https://images-na.ssl-images-amazon.com/images/I/81rn3nnLPKL._UL1500_.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px; left: 2%;">Casual wear Lace-Up Shoes Boots <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 48%;"><br><br><br><br><br><br>Price: Rs.399<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px;">Pink Colour<br> Size 8</span>
	</div>
	<a href="Fashioncart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 2) {
				i = 3;
			%>
	<div style="position: relative; display: flex; left: 2%;">
		<img class="cat_items" style="width: 300px;" src="https://images-na.ssl-images-amazon.com/images/I/51KSE29ctyL._UL1452_.jpg">
		<span style="position:relative; margin-top: 40px; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px; left: 6%;">Color Block Men Round Neck T-Shirt<br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 48%;"><br><br><br><br><br><br>Price: Rs.599.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px;"><br> Color - Black & white<br> Size-L <br> </span>
	</div>
	<a href="Fashioncart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 3) {
				i = 4;
			%>
	<div style="position: relative; display: flex; left: 5%;">
		<img class="cat_items" style="width: 200px;" src="https://images-na.ssl-images-amazon.com/images/I/71kTBKE0cjL._UL1500_.jpg">
		<span style="position:relative; margin-top: 40px; left: 10%; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">Women Fit and Flare Black Dress <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 40%;"><br><br><br><br><br><br>Price: Rs.1199.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px; left: 10%;">Black <br> Size-M</span>
	</div>
	<a href="Fashioncart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh); top: 100px;"> Add to Cart</button></a>
		<%
			}
			%>
			<%
			if (rs.next() && i == 4) {
			%>
	<div style="display: flex;">
		<img class="cat_items" src="https://images-na.ssl-images-amazon.com/images/I/81JC51oKm8L._UL1500_.jpg">
		<span style="position:relative; margin-top: 40px; left: 2%; 
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-weight: bolder;
		font-size: 50px;">Solid Men Blue Track Pants <br></span>
		<span style="position:relative;  margin-top: 40px; font-weight: 900; right: 38%;"><br><br><br><br><br><br>Price: Rs.499.00<br>
			Inclusive of all taxes</span>
		<span style="position:relative; margin-top: 40px; top: 50px; left: 12%;">Blue Colour <br> Size-L </span>
	</div>
	<a href="Fashioncart.jsp?id=<%=rs.getString(1)%>"><button style="position: relative;
		width: auto; background-color: rgb(223, 223, 103); color: black; 
		border-radius: 5px; padding: 5px; width: 10vw; font-weight: 700; font-size: 18px;
		transform: translate(32vw,-18vh);"> Add to Cart</button></a>
<%
			}
			} 
			catch (Exception e) {
			System.out.println(e);
			}
			%>
</body>
</html>