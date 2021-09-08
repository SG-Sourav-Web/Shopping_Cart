<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
                String name=request.getParameter("name");
        		String email=request.getParameter("email");
        		String phone=request.getParameter("phone");
        		String pwd=request.getParameter("pwd");
        		try
        		{
        			Class.forName("com.mysql.jdbc.Driver");
        			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingdb","SOM","tork9546#123");
                    String query="insert into users values(?,?,?,?)";
        			PreparedStatement ps=con.prepareStatement(query);
        			ps.setString(1, name);
        			ps.setString(2, email);
        			ps.setString(3, phone);
        			ps.setString(4, pwd);
        			int i = ps.executeUpdate();  
        			if(i>0)
        			{
        				response.sendRedirect("Login.jsp");
        			}
        		}
        		catch(Exception e)
        		{
        			System.out.println(e);
        		}
                %>