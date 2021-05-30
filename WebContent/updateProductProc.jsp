<%@page import="java.sql.*"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_5e9f153ed6f0b20";%>
<%!String user = "b45c552be3803d";%>
<%!String psw = "4fa79fab";%>

<%

String image = request.getParameter("productimage");
String id = request.getParameter("product");
String name = request.getParameter("productname");
String description= request.getParameter("productdescription");
int quantity= Integer.parseInt(request.getParameter("productquantity"));
double price = Double.parseDouble(request.getParameter("productprice"));
String type = request.getParameter("productype");

Connection con = null;
PreparedStatement ps = null;

	try
	{
		out.println("masuk try");
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,user,psw);
		  String sql = "update product set productid=?, productname=? ,productdescription=?, productquantity=?, productimage=?, productprice=?, productype=? where productid="+id;
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, description);
			ps.setInt(4, quantity);
			ps.setString(5, image);
			ps.setDouble(6, price);
			ps.setString(7, type);
		  ps.executeUpdate();
		  response.sendRedirect("index.jsp");

		                
	}
	catch(SQLException sql)
	{
		out.print("There is a problem in updating Record.");
		request.setAttribute("error",sql);
		out.println(sql);
	}
	
%>