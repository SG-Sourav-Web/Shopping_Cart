<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Seymour+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Home.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>S-cart</title>
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
	<main>
		<section class="banner">
			<div class="w3-content w3-section org_img">
				<img class="mySlides" src="pic1.jpg" style="width: 190%; height: 100%">
				<img class="mySlides" src="pic2.jpg" style="width: 180%; height: 100%">
				<img class="mySlides" src="pic3.jpg" style="width: 170%; height: 100%">
				<img class="mySlides" src="pic4.jpg" style="width: 190%; height: 100%">
				<img class="mySlides" src="pic5.jpg" style="width: 190%; height: 100%">
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
		<div><button>Buy Now</button> </div>
		</section>
		<section class="item3">
			<div class="inner-3">
				<div>
					<h4>Smart AC</h4>
					<p>Alexa Built In</p>
					<a href="Home-app.jsp"><button>Shop-now</button></a>
				</div>
				<img
					src="https://images-na.ssl-images-amazon.com/images/I/618t5eMsXqL._SL1500_.jpg">
			</div>
			<div class="inner-3">
				<div>
					<h4>Iphone 12</h4>
					<p>A14 Bionic Chip</p>
					<a href="Mobile.jsp"><button>Shop-now</button></a>
				</div>
				<img
					src="https://images-na.ssl-images-amazon.com/images/I/71E5zB1qbIL._SL1500_.jpg" style="height: 120%; top: -15px;">
			</div>
			<div class="inner-3">
				<div>
					<h4>Adidas</h4>
					<p>Sports Shoe</p>
					<a href="Fashion.jsp"><button>Shop-now</button></a>
				</div>
				<img
					src="https://images-na.ssl-images-amazon.com/images/I/71VQbP8fgLL._UL1500_.jpg">
			</div>
		</section>
	</main>
	<footer>
		<div class="part1">
			<p>SUBCRIPTION</p>
			<input type="text" placeholder="Your email here">
			<button>SUBCRIBE</button>
			<p>Contact with us</p>
			<i class="fa fa-facebook" style="color:#01c0df"></i>
			<i class="fa fa-twitter" style="color:#01c0df"></i>
			<i class="fa fa-instagram" style="color:rgba(250, 39, 39, 0.687)"></i>
			<i class="fa fa-linkedin" style="color:#01c0df"></i>
			<i class="fa fa-youtube"style="color:red"></i>
		</div>
		<div class="part2">
			<p>HOW TO BUY</p>
			<ul>
			<li><a href=""><i class="fa fa-truck"></i> Delivery option</a></li>
			<li><a href=""><i class="fa fa-money"></i> making payments</a></li>
			<li><a href=""><i class="fa fa-product-hunt"></i> buyer protection</a></li>
			<li><a href=""><i class="fa fa-user-circle"></i> new user guides</a></li>
			</ul>
		</div>
		<div class="part3">
			<p>CUSTOMER SERVICES</p>
			<ul>
			<li><a href=""><i class="fa fa-envelope"></i> Online services</a></li>
			<li><a href=""><i class="fa fa-shield"></i> Secure</a></li>
			<li><a href=""><i class="fa fa-flag"></i> Responsibility</a></li>
			<li><a href=""><i class="fa fa-dollar"></i> Refund</a></li>
			</ul>
		</div>
		<div class="part4">
			<p>CONTACT US</p>
			<ul>
			<li><a href=""><i class="fa fa-map-marker"></i> 1221-address city state</a></li>
			<li><a href=""><i class="fa fa-phone"></i> +917679486084</a></li>
			<li><a href=""><i class="fa fa-envelope"></i> contact@gmail.com</a></li>
			</ul>
		</div>
		<div style="top: -690px; color: white; left: 400px">
			<p style=" font-size:15px; font-family: 'Courier New', Courier, monospace;">Copyright &copy; 2021, CEO- Swaprative Pal & Sourav Gupta, Scart Shopping Website</p>
		</div>
	</footer>
</body>
</html>