<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
	<%
	String email = (String)session.getAttribute("email");
	String productid = request.getParameter("id");
	int quantity = 1;
	int price = 0;
	int total_price = 0;
	int cart_total = 0;
	String name = "";
	
	int i = 0;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from fashion where productid = '"+productid+"'");
		while(rs.next())
		{
			name = rs.getString(2);
			price = rs.getInt(3);
			total_price = price;
		}
		ResultSet rs1 = st.executeQuery("select * from cart where productid = '"+productid+"' and email='"+email+"'");
		while(rs1.next())
		{
			cart_total = rs1.getInt(6);
			cart_total = cart_total + price;
			quantity = rs1.getInt(5);
			quantity = quantity + 1;
			i = 1;
		}
		if(i == 1)
		{
			st.executeUpdate("update cart set quantity = '"+quantity+"', total = '"+cart_total+"' where productid = '"+productid+"' and email='"+email+"'");
			response.sendRedirect("Fashion.jsp");
		}
		if(i == 0)
		{
			PreparedStatement ps = con.prepareStatement("insert into cart values(?,?,?,?,?,?)");
			ps.setString(1, email);
			ps.setString(2, productid);
			ps.setString(3, name);
			ps.setInt(4, price);
			ps.setInt(5, quantity);
			ps.setInt(6, total_price);
			ps.executeUpdate();
			response.sendRedirect("Fashion.jsp");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>