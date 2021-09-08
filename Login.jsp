<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Log_up.css">
<title>Login | S-Cart</title>
</head>
<body>
	<div class="grid">
		<div class="img1">
			<img src="img.png" width="100px" height="100px">
			<p
				style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 30px; text-shadow: 2px 2px 4px #000000;">
				LogIn to <br>Your account
			</p>
		</div>
		<div class="form">
			<form action="Logindb.jsp" method="post">
				<span class="tag">Welcome Back</span> <br> <br> <br>
				<label>Email </label> <input type="Email" name="email"> <br>
				<br> <label style="position: relative; left: -10px;">Password
					<input type="password" name="pwd" required>
				</label>
				<button id="button">Procced</button>
			</form>
			<p style="font-family: Verdana, Geneva, Tahoma;">
				New on Scart ?<a href="Signup.jsp"><br><br>Create new Account</a>
			</p>
		</div>
	</div>
</body>
</html>