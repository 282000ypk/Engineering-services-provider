<%
String type="industrialist";
Cookie c1=new Cookie("usertype",type);
response.addCookie(c1);
%>
<html>
<head>
<title>registration form</title>
</head>
<body>
	<center>
		<form method="POST" action="http://localhost:8080/test/test/login.jsp">
		<div id=container >
			<div id=header style="background-color:#FFCC00">
				
				<hr>
				<br>
				<h1>register as a Industrialist</h1><hr>
			</div>
			<div id=data>
				<table border=2 cellspacing="5" >
				<tr style="border-color: black solid"><td style="border: none">
				<table border=0 cellpadding="2" cellspacing="2">
					<b>
					<tr><td><b>Name :</b></td></tr><tr><td><input type="text" name="name" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Address :</b></td></tr><tr><td><input type="text" name="address" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Industry name :</b></td></tr><tr><td><input type="text" name="iname" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Industry address :</b></td></tr><tr><td><input type="text" name="iaddress" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Industry Type :</b></td></tr><tr><td><input type="text" name="type" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Phone no :</b></td></tr><tr><td><input type="text" name="phone" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>gstin :</b></td></tr><tr><td><input type="text" name="gstin" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Email id:</b></td></tr><tr><td><input type="text" name="email" style="width: 300px;border:none;border-bottom:1px black solid;outline: none" required="" placeholder="example@gmail.com"></td></tr>
					<tr><td><b>password:</b></td></tr><tr><td><input type="password" name="password1" style="width: 300px;border:none;border-bottom:1px black solid;outline: none" required="" placeholder="minimum length 8"></td></tr>
				</table>
				</td></tr>
				</table>
				<div id=footer style="background-color: #FFCC00">
					<hr>
					<br>
					<input type="submit" value="save and next" ><br><br>
					<a href="choose.html" style="color: red"><u>Change user type</a><br><br>
					<a href="login.html" style="color: red">cancel</a></u>
				<hr>
			</div>
		</div>
	</form>
	</center>
</body>
</html>