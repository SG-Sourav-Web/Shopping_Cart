<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%  String email = (String)session.getAttribute("email");
String id = request.getParameter("id");
int j = 0;
int quantity = 0, price = 0, total = 0;
int new_quan = 0, new_total = 0;
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from cart where name = '"+id+"' and email='"+email+"'");
				while(rs.next())
				{
					price = rs.getInt(4);
					quantity = rs.getInt(5);
					total = rs.getInt(6);
					if(quantity > 1)
					{
						new_quan = quantity - 1;
						new_total = total - price;
						j = 1;
					}
				}
				if(j == 1)
				{
					st.executeUpdate("update cart set quantity = '"+new_quan+"', total = '"+new_total+"' where name = '"+id+"' and email='"+email+"'");
					response.sendRedirect("Cart.jsp");
				}
				if(j == 0)
				{
					PreparedStatement ps=con.prepareStatement("delete from cart where name =? and email=?");
					ps.setString(1, id);
					ps.setString(2, email);
					ps.executeUpdate();
					response.sendRedirect("Cart.jsp");
				}
			}
		catch(Exception e){
				System.out.println(e);
			}%>