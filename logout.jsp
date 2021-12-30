<%
HttpSession hs=request.getSession(true);
hs.invalidate();
response.sendRedirect("http://localhost:8080/test/test/login.html");
%>