<%@page import="java.sql.*"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_5e9f153ed6f0b20";%>
<%!String user = "b45c552be3803d";%>
<%!String psw = "4fa79fab";%>

<%

String image = request.getParameter("image");
String id = request.getParameter("pid");
String name = request.getParameter("pname");
String description= request.getParameter("description");
int quantity= Integer.parseInt(request.getParameter("pquantity"));
double price = Double.parseDouble(request.getParameter("price"));
String category = request.getParameter("category");

Connection con = null;
PreparedStatement ps = null;
String idd = request.getParameter("productid");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_5e9f153ed6f0b20", "b45c552be3803d", "4fa79fab");
		Statement st = conn.createStatement();
		st.executeUpdate("insert into product (productid, productimage, productname, productdescription, productquantity, productprice,productype) values ('"+id+"','"+image+"','"+name+"','"+description+"', '"+quantity+"', '"+price+"','"+category+"')");
		response.sendRedirect("index.jsp");

		                
	}
	catch(SQLException sql)
	{
		out.print("There is a problem in updating Record.");
		request.setAttribute("error",sql);
		out.println(sql);
	}
	
%>