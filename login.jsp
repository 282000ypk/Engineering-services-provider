<%@ page language="java" import="java.sql.*" %>
<%
int flag=0;
String id=null,usertype=null;
String pass=request.getParameter("password1");
String email=request.getParameter("email");
Cookie c[]=request.getCookies();


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
    				rs=st.executeQuery("select id from login");
   				
   				while(rs.next())
   				{
   					if(email.equals(rs.getString(1)))
   					{
              flag=1;
   						//response.sendRedirect("id.jsp");
   						for(int i=0;i<c.length;i++)
   						{
   						if(c[i].getName().equals("usertype"))
   						{
   						if("industrialist".equals(c[i].getValue()))
   						{response.sendRedirect("data.jsp");break;}
   						if("machineowner".equals(c[i].getValue()))
   						{response.sendRedirect("owner.jsp");break;}
						  if("dealer".equals(c[i].getValue()))
   						{response.sendRedirect("dealer.jsp");break;}
              if("supervisor".equals(c[i].getValue()))
              {response.sendRedirect("chooseworker.html");break;}
              if("employee".equals(c[i].getValue()))
              {response.sendRedirect("chooseworker.html");break;}
              if("trainer".equals(c[i].getValue()))
              {response.sendRedirect("chooseworker.html");break;}
   						}
   						}
   					}
   				}
          }
   				
   				con.close();
   			}
   			catch(Exception e)
  			{
  				out.println(e); 
  			}


String name,address,phone,gstin;
name=request.getParameter("name");
address=request.getParameter("address");
phone=request.getParameter("phone");
gstin=request.getParameter("gstin");
id=email;
if(flag==0)
  {
for(int i=0;i<c.length;i++)
{
	if(c[i].getName().equals("usertype"))
	{
		usertype=c[i].getValue();
		
		break;
	}
}

			
  			try
  			{	
   				Class.forName("org.postgresql.Driver");
   				con=DriverManager.getConnection("jdbc:postgresql://localhost/project","postgres","postgres");
   				if(con==null)
   				{
    				out.println("<center><b>connection failed</b></center>");
   				}
   				else
   				{
   					st=con.createStatement();
    				rs=st.executeQuery("insert into login values('"+id+"','"+pass+"','"+usertype+"')");
                  
				}
   				con.close();	
   			}
   			catch(Exception e)
  			{
  						
  				//out.println(e); 
  			}

        try
        { 
          Class.forName("org.postgresql.Driver");
          con=DriverManager.getConnection("jdbc:postgresql://localhost/project","postgres","postgres");
          if(con==null)
          {
            out.println("<center><b>connection failed</b></center>");
          }
          else
          {
        if(usertype.equals("industrialist"))
            {
             // out.print("industrialist");
              String iname=request.getParameter("iname");
              String iaddress=request.getParameter("iaddress");
              String type=request.getParameter("type");
              rs=st.executeQuery("insert into industrialist values('"+id+"','"+name+"','"+address+"','"+phone+"','"+gstin+"','"+iname+"','"+iaddress+"','"+type+"')");
            }
            if(usertype.equals("machineowner"))
            {
              String sname=request.getParameter("sname");
              String saddress=request.getParameter("saddress");
              int capacity=Integer.parseInt(request.getParameter("capacity"));
              rs=st.executeQuery("insert into machineowner values('"+id+"','"+name+"','"+address+"','"+phone+"','"+gstin+"','"+sname+"','"+saddress+"',"+capacity+")");
            }
            if(usertype.equals("dealer"))
            {
              String wname=request.getParameter("wname");
              String waddress=request.getParameter("waddress");
              String count=request.getParameter("count");
              rs=st.executeQuery("insert into dealer values('"+id+"','"+name+"','"+address+"','"+phone+"','"+gstin+"','"+wname+"','"+waddress+"','"+count+"')");
            }
            if(usertype.equals("supervisor"))
            {
              String sname=request.getParameter("sname");
              String saddress=request.getParameter("saddress");
              String mid=request.getParameter("mid");
              int no=Integer.parseInt(request.getParameter("no"));
              rs=st.executeQuery("insert into supervisor values('"+id+"','"+name+"','"+address+"','"+phone+"','"+sname+"','"+saddress+"','"+usertype+"',"+no+",'"+mid+"')");
            }
            if(usertype.equals("trainer"))
            {
              String sname=request.getParameter("sname");
              String saddress=request.getParameter("saddress");
              String mid=request.getParameter("mid");
              int no=Integer.parseInt(request.getParameter("no"));
              rs=st.executeQuery("insert into trainer values('"+id+"','"+name+"','"+address+"','"+phone+"','"+sname+"','"+saddress+"','"+usertype+"',"+no+",'"+mid+"')");
            }
            if(usertype.equals("employee"))
            {
              String sname=request.getParameter("sname");
              String saddress=request.getParameter("saddress");
              String mid=request.getParameter("mid");
              int no=Integer.parseInt(request.getParameter("no"));
              rs=st.executeQuery("insert into employee values('"+id+"','"+name+"','"+address+"','"+phone+"','"+sname+"','"+saddress+"','"+usertype+"',"+no+",'"+mid+"')");
            }
          }
          con.close();
                  
        }
        catch(Exception e)
        {
          out.print(e);
        }
        try{
        response.sendRedirect("login.html");
        }
        catch(Exception e)
        { }

}
%>