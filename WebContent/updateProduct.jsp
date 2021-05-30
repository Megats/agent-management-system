<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%String id = request.getParameter("productid");

	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/";
	String database = "heroku_5e9f153ed6f0b20";
	String userid = "b45c552be3803d";
	String password = "4fa79fab";
	

   try {
   	Class.forName(driver);
   	} 
   	catch (ClassNotFoundException e) {
   	e.printStackTrace();
   	}
   	
   	Connection connection = null;
   	Statement statement = null;
   	ResultSet resultSet = null;
   	%>
   	<%
   	try{
   	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
   	statement = connection.createStatement();
   	String sql ="select * from product where productid="+id;
   	resultSet = statement.executeQuery(sql);

   	while(resultSet.next()){

   		%>

   <!DOCTYPE html>
   <html>
   <title>AGENT MANAGEMENT SYSTEM</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../css/w3.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
   <style>
   body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
   body {font-size:16px;}
   .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
   .w3-half img:hover{opacity:1}

   table {
     font-family: arial, sans-serif;
     border-collapse: collapse;
     width: 100%;
   }

   td, th {
     border: 1px solid #dddddd;
     text-align: left;
     padding: 8px;
   }

   tr:nth-child(even) {
     background-color: #dddddd;
   }
   </style>

   <body>


   <!-- Top menu on small screens -->
   <header class="w3-container w3-top w3-hide-large w3-pale-blue w3-xlarge w3-padding">
     <a href="javascript:void(0)" class="w3-button w3-pale-blue w3-margin-right" onclick="w3_open()">☰</a>
     <span>AGENT MANAGEMENT SYSTEM</span>
   </header>

   <!-- Overlay effect when opening sidenav on small screens -->
   <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

   <!-- !PAGE CONTENT! -->

     <!-- Header -->
     <div class="w3-container" style="margin-top:20px" id="home">
       <h1 class="w3-jumbo"><b>Update Product</b></h1>
       <h1 class="w3-xxxlarge w3-text-black"><b><u>Supplier : Hafiz</u></b></h1>
       <hr style="width:50px;border:5px solid black" class="w3-round">
     </div>
      <fieldset>
     <legend>Please fill all the field</legend>
   <form method="POST" action="updateProductProc.jsp">
     <input type="hidden" name="product" value="<%=resultSet.getString("productid")%>">

     <label for="image">Upload picture:</label><br>
     <input type="file" id="myFile" name="productimage" value="<%=resultSet.getString("productimage")%>"><br>
     <label for="name">Product name:</label><br>
     <input type="text" id="prodname" name="productname" value="<%=resultSet.getString("productname")%>"><br>
     <label for="description">Product Description:</label><br>
     <input type="text" id="proddesc" name="productdescription" value="<%=resultSet.getString("productdescription")%>"><br>
     <label for="quantity">Product Quantity:</label><br>
     <input type="text" id="prodquantity" name="productquantity" value="<%=resultSet.getInt("productquantity")%>"><br>
     <input type="hidden" name="productprice" value="20">
     <label for="producttype">Product Category:</label><br>
     <select id="productype" name="productype">
       <option value="wet">Wet</option>
       <option value="dry">Dry</option>
   	</select><br><br>
     <input type="submit" value="Update">
   </form> 
   </fieldset>
   <%
   
   	}
   	connection.close();
   	} catch (Exception e) {
   	e.printStackTrace();
   	}
   	%>

   <!-- W3.CSS Container -->
   <div class="w3-light-grey w3-container w3-padding-8" style="margin-top:45px;padding-right:58px"><p class="w3-right"><p align="center">© 2020 Agent Management System</p>
   </div>
   <script>
   // Script to open and close sidenav
   function w3_open() {
       document.getElementById("mySidenav").style.display = "block";
       document.getElementById("myOverlay").style.display = "block";
   }
    
   function w3_close() {
       document.getElementById("mySidenav").style.display = "none";
       document.getElementById("myOverlay").style.display = "none";
   }

   // Modal Image Gallery
   function onClick(element) {
     document.getElementById("img01").src = element.src;
     document.getElementById("modal01").style.display = "block";
     var captionText = document.getElementById("caption");
     captionText.innerHTML = element.alt;
   }

   // Accordion
   function myAccFunc() {
       var x = document.getElementById("demoAcc");
       if (x.className.indexOf("w3-show") == -1) {
           x.className += " w3-show";
           x.previousElementSibling.className += " w3-white";
       } else { 
           x.className = x.className.replace(" w3-show", "");
           x.previousElementSibling.className = 
           x.previousElementSibling.className.replace(" w3-white", "");
       }
   }
   function confirmationLogout(anchor)
   {
   	var conf = confirm('Are you sure want to Logout?');
   	if(conf)
   	window.location=anchor.attr("href");
   }
   </script>

   </body> 
   </html>
