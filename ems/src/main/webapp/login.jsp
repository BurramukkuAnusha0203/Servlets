<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

.form-elements {
	display: grid;
	grid-template-columns: auto;
	gap: 30px;
	width: 20%;
	margin: auto;
	border: 1px solid black;
	padding: 30px;
}

h1 {
	text-align: center;
	margin: 5%;
}
.form-elements input{
	width:90%;
	padding:15px;
}
</style>

</head>
<body>
	<h1 >Login</h1>
	<h2><%= session.getAttribute("name") %></h2>
	<form action="login" method="post">
		<div class="form-elements">
			<input type="email" name="email" placeholder="Enter your emial">
			<input type="password" name="password" placeholder="Enter password">
			<button type="submit">Login</button>

		</div>

	</form>
	<script type="text/javascript">
		let msgEle = document.getElementById("msg");
		setTimeout(()=>{
			msgEle.style.display="none";
		},3000)
	</script>

</body>

</html>