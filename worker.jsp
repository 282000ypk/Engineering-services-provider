<%@ page language="java" import="java.sql.*" %>
<%
String type=null;
String s[]=request.getParameterValues("r");
if(s==null)
response.sendRedirect("http://localhost:8080/test/test/chooseworker.html");
else{
if(s[0].equals("supervisor"))
	type="supervisor";
if(s[0].equals("employee"))
	type="employee";
if(s[0].equals("trainer"))
	type="trainer";
}
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
				<h1>register as a <%= type%></h1><hr>
			</div>
			<div id=data>
				<table border=2 cellspacing="5" >
				<tr style="border-color: black solid"><td style="border: none">
				<table border=0 cellpadding="2" cellspacing="2">
					<b>
					<tr><td><b>Name :</b></td></tr><tr><td><input type="text" name="name" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Address :</b></td></tr><tr><td><input type="text" name="address" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>shop name :</b></td></tr><tr><td><input type="text" name="sname" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>shop address :</b></td></tr><tr><td><input type="text" name="saddress" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<tr><td><b>Works for owner id :</b></td></tr><tr><td>
					<select name=mid>
					<%
					Connection con=null;
	 	 	  		Statement st=null;
  					ResultSet rs=null;
		  			try
		  			{	
		   				Class.forName("org.postgresql.Driver");
		   				con=DriverManager.getConnection("jdbc:postgresql://localhost/project","postgres","postgres");
		   				if(con==null)
		   				{
		    				out.println("<center><b>error::connection failed</b></center>");
		   				}
		   				else
		   				{
		   					st=con.createStatement();
		    				rs=st.executeQuery("select * from machineowner");		   				
			   				while(rs.next())
			   				{
			   					out.print("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
			   				}
		          		}
		   				con.close();
		   			}
   			catch(Exception e)
  			{
  				out.println(e); 
  			}      
					%>
					</select>
				</td></tr>
					<!-- <tr><td><b>Works for owner id :</b></td></tr><tr><td><input type="text" name="mid" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr> !-->
					<tr><td><b>Phone no :</b></td></tr><tr><td><input type="text" name="phone" required="" style="width: 300px;border:none;border-bottom:1px black solid;outline: none"></td></tr>
					<%
					if(type.equals("supervisor"))
					out.print("<tr><td><b>number of employee :</b></td></tr><tr><td><input type=\"number\" name=\"no\" required=\"\" style=\"width: 300px;border:none;border-bottom:1px black solid;outline: none\"></td></tr>");
				if(type.equals("employee"))
					out.print("<tr><td><b>number of machines :</b></td></tr><tr><td><input type=\"number\" name=\"no\" required=\"\" style=\"width: 300px;border:none;border-bottom:1px black solid;outline: none\"></td></tr>");
				if(type.equals("trainer"))
					out.print("<tr><td><b>number of interns :</b></td></tr><tr><td><input type=\"number\" name=\"no\" required=\"\" style=\"width: 300px;border:none;border-bottom:1px black solid;outline: none\"></td></tr>");
					%>
					
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