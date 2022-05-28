<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%
      String email=request.getParameter("email");
   String btn1=request.getParameter("btn1");
   String btn2=request.getParameter("btn2");
  if(btn1!=null && btn1.equalsIgnoreCase("signup")){
  String fullname=request.getParameter("fname");  
  String userid=request.getParameter("userid"); 
  String password= request.getParameter("pass");  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/safegathering","root","shubhi");

PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?)");
ps.setString(1,fullname);
ps.setString(2,userid);
session.setAttribute("call",userid);
ps.setString(3,password);
ps.setString(4,email);
ps.executeUpdate();
response.sendRedirect("mallregistration.jsp");
}
%> 

