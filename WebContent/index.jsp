<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
</head>
<title>AGENT MANAGEMENT SYSTEM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

<style> 
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {
  	background-image: url("uploadStock/pic1.jpg");
    background-repeat: no-repeat, repeat;
    background-size: cover; /* Resize the background image to cover the entire container */  
}
.container .btn {
  margin: 0;
  position: absolute;
  -ms-transform: translateX(500%);
  transform: translateX(500%);
  top: 50%;
  left: 0%;
  background-color: #25577D;
  color: white;
  font-size: 25px;
  padding: 10px 25px;
  border: 0;
  cursor: pointer;
  border-radius: 10px;
  text-align: left;
}


.container .btn:hover 
{
  background-color: black;
  color: white;
}

h1 
{
   position: absolute;
   text-align: left;
   left: 35%;
   color: black;

}
h2
{
   position: absolute;
   text-align: left;
   left: 45%;
   color: black;

}
div.ex1 {
  width: 500px;
  height: 350px;
  margin: auto;
  position: center;
  border: 3px solid #244C6D;
  background-color: #E6FBFF;
}
</style>
</head>
<body><br><br><br><br><br><br><br><br>
	<div class="ex1"><center><br>
   <div class="container">
   <h1>Agent Management System</h1>
	<br><br><br><br>
	<h2>Login as</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
	
  <a href="loginAgent.html" class="btn">Agent</a>&nbsp;
  <a href="viewProduct.jsp" class="btn">Supplier</a>&nbsp;
	</div></center></div>
</div>

</body>
</html>
