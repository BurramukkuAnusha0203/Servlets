<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Here</title>
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

	<h1>Register Here</h1>
	<h2><%= session.getAttribute("name") %></h2>
	<form action="reg">
		<div id="abc">
			<input type="number" name="id" placeholder="Enter id"> 
			<input type="text" name="name" placeholder="Enter name"> 
			<input type="text" name="email" placeholder="Enter email"> 
			<input type="text" name="salary" placeholder="Enter salaray"> 
			<input type="text" name="dno" placeholder="Enter dno"> 
			<input type="text" name="password" placeholder="Enter password">
			<button type="submit">Register</button>
		</div>

	</form>


</body>
</html>