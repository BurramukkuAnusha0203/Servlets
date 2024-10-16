<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
  *{
   margin:0px;
   padding:0px;
  
  }
  #abc{
  	display:grid;
  	grid-template-columns:auto;
  	gap:20px;
  	width:20%;
  	margin :auto;
  	border:2px solid purple;	
  	padding:25px;
  	background:linear-gradient(plum,aqua);
  	border-radius:10px;
  	
  	
  }
  input{
  padding:10px;
  border-radius:10px;
  border:2px solid purple;
  box-shadow:4px 4px 10px black;
  
  }
  input:placeholder{
     font-weight:bold;
  }
  button{
  padding : 10px;
  width:40%;
  margin:auto;
  background:linear-gradient(plum,wheat);
  border-radius:10px;
  }
  h1{
     text-align:center;
     background:linear-gradient(plum,wheat);
     font-style:italic;
     margin:5% 0%;
     width:100%;
     padding:10px 0px;
  
  }
</style>
</head>
<body>
	<%
		ResultSet rs= (ResultSet)request.getAttribute("rs");
	%>


	<h1>Update Page</h1>
	<h2><%= session.getAttribute("name") %></h2>
	<form action="update" method="post">
	   <div id='abc'>
	   	<input type="text" name="id" placeholder="Enter New id" value=<%=rs.getInt(1)%>>
	   <input type="text" name="name" placeholder="Enter New name" value=<%=rs.getString(2)%>>
	   <input type="text" name="email" placeholder="Enter New email" value=<%=rs.getString(3)%>>
	   <input type="text" name="salary" placeholder="Enter New salary" value=<%=rs.getDouble(4)%>>
	   <input type="text" name="dno" placeholder="Enter New dno" value=<%=rs.getInt(5)%>>
	   <input type="text" name="password" placeholder="Enter New password" value=<%=rs.getString(6)%>>
	   <button type="submit">Update </button>
	   </div>
	</form>

</body>
</html>