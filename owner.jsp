<%
String type="machineowner";
Cookie c1=new Cookie("usertype",type);
response.addCookie(c1);
%>

<html>
<head>
<title>registration form</title>
</head>
<body>			
	<center>
		<form method="GET" action="http://localhost:8080/test/test/login.jsp">
		<div id=container >
			<div id=header style="background-color:#FFCC00">
				
				<hr>
				<br>
				<h1>register as a Machine Owner</h1><hr>
			</div>
			<div id=data>
				<form method="GET" action="http://localhost:8080/test/jsp/id.jsp">
					<table border="2" cellspacing="3">
						<tr style="border-color: black solid"><td style="border: none">
				<table border=0 cellpadding="2" cellspacing="2">
					<tr><td><b>Name :</td></tr><tr><td><input type="text" name="name" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Address :</td></tr><tr><td><input type="text" name="address" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Shop name :</td></tr><tr><td><input type="text" name="sname" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Shop address :</td></tr><tr><td><input type="text" name="saddress" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Phone no :</td></tr><tr><td><input type="text" name="phone" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>gstin :</td></tr><tr><td><input type="text" name="gstin" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Job capacity at once :</td></tr><tr><td><input type="number" name="capacity" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>email :</td></tr><tr><td><input type="text" name="email" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none" placeholder="example@gmail.com"></td></tr>
					<tr><td><b>password</td></tr><tr><td><input type="password" name="password1" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none" placeholder="minimum length 8"></td></tr>
			

				</table>
				</td></tr>
				</table>
				</form>
				<div id=footer style="background-color: #FFCC00">
					<hr>
					<br>
					<input type="submit" value="save and next"><br><br>
					<a href="choose.html" style="color: red"><u>change user type</a><br><br>
					<a href="login.html" style="color: red">cancel</a></u>
				<hr>
			</div>
		</div>
	</form>
	</center>
</body>
</html>