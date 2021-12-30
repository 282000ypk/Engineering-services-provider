<%
String type="dealer";
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
				<h1>register as a Machine Dealer</h1><hr>
			</div>
			<div id=data>
				<form method="GET" action="http://localhost:8080/test/jsp/id.jsp">
					<table border="2">
						<tr style="border:black solid"><td style="border:none">
				<table border=0 cellpadding="2" cellspacing="2">
					<tr><td><b>Name :</td></tr><tr><td><input type="text" name="name" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Address :</td></tr><tr><td><input type="text" name="address" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Warehouse name :</td></tr><tr><td><input type="text" name="wname" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Warehouse address :</td></tr><tr><td><input type="text" name="waddress" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Machine Count :</td></tr><tr><td><input type="number" name="count" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Phone no :</td></tr><tr><td><input type="text" name="phone" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>			
					<tr><td><b>gstin :</td></tr><tr><td><input type="text" name="gstin" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>email :</td></tr><tr><td><input type="text" name="email" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none" ></td></tr>
					<tr><td><b>password</td></tr><tr><td><input type="text" name="password1" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
			
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