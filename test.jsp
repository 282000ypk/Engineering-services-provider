<%@ page language="java" import="java.sql.*" %>

	<% 
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
    if(id==null || pass==null || id.equals("") || pass.equals(""))
    {
      response.sendRedirect("http://localhost:8080/test/test/login.html");
    }
    int flag=0;
		 	  Connection con=null;
	 	 	  Statement st=null;
  			ResultSet rs=null;
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
    				rs=st.executeQuery("select * from login");
     				while(rs.next())
     				{
     					if(id.equals(rs.getString(1)))
     					{
     						if(pass.equals(rs.getString(2)))
     						{
     							out.print("<br><br><br><center><b>login successfull</b><br><br>");
                  flag=1;
                  if(rs.getString(3).equals("industrialist"))
                  {
                    HttpSession hs=request.getSession(true);
                    hs.setAttribute("id",id);
                    //Cookie e=new Cookie("id",id);
                    //response.addCookie(e);
                    response.sendRedirect("industrialist/ind.jsp");
                  }
                  
                  if(rs.getString(3).equals("machineowner"))
                  {
                    HttpSession hs=request.getSession(true);
                    hs.setAttribute("id",id);
                    //Cookie e=new Cookie("id",id);
                    //response.addCookie(e);
                    response.sendRedirect("machineowner/mo.jsp");
                  }
     							if(rs.getString(3).equals("dealer"))
                  {
                    HttpSession hs=request.getSession(true);
                    hs.setAttribute("id",id);
                    //Cookie e=new Cookie("id",id);
                    //response.addCookie(e);
                    response.sendRedirect("dealer/d.jsp");
                  }
                  if(rs.getString(3).equals("employee")||rs.getString(3).equals("trainer")||rs.getString(3).equals("supervisor"))
                  {
                    HttpSession hs=request.getSession(true);
                    hs.setAttribute("id",id);
                    //Cookie e=new Cookie("id",id);
                    //response.addCookie(e);
                    if(rs.getString(3).equals("employee"))
                    response.sendRedirect("worker/w.jsp");
                    if(rs.getString(3).equals("trainer"))
                    response.sendRedirect("worker/t.jsp");
                    if(rs.getString(3).equals("supervisor"))
                    response.sendRedirect("worker/s.jsp");
                  }
                  break;
     						}
     					}
     				}
          if(flag!=1)
          {
            response.sendRedirect("http://localhost:8080/test/test/login.html");
         	}
          }
   				
   				con.close();
   			}
   			catch(Exception e)
  			{
  				out.println(e); 
  			}
	%>
