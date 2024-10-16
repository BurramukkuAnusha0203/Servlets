<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee Page</title>
<style>
table {
	margin: auto;
}

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	padding: 15px;
}

#createbut {
	margin-left: 70%;
}
</style>
</head>
<body>
	<h1 style="text-align: center">All Employee Details</h1>
	<a href="reg.jsp" id="createbut"><button>Click here to
			register</button></a>

	<h2><%= session.getAttribute("name") %></h2>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Salary</th>
				<th>DeptNo</th>
				<th>Password</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		%>

		<%
		while (rs.next()) {
		%>
		<tbody>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><a href="delete?id=<%=rs.getString(1)%>	"><button>Delete</button></a></td>
				<td><a href="updatepage?id=<%=rs.getString(1)%>"><button>Update</button></a></td>

			</tr>
		</tbody>

		<%
		}
		%>
	</table>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<center>
		<a href="logout"><button>Logout</button></a>
	</center>
	<script type="text/javascript">
		let msgEle = document.getElementById("msg");
		setTimeout(()=>{
			msgEle.style.display="none";
		},3000)
	</script>



</body>
</html>

