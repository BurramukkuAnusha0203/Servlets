<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<h1>Welcome to EMS</h1>
	<a href="reg.jsp"><button>Click Here to Register</button></a>
	<a href="allemp"><button>All Employee Details</button></a>
	<script type="text/javascript">
		let msgEle = document.getElementById("msg");
		setTimeout(()=>{
			msgEle.style.display="none";
		},3000)
	</script>
</body>

</html>