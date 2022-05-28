<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%
   String userid=request.getParameter("userid");
   String password=request.getParameter("pass"); 
   String btn3=request.getParameter("btn3");
   String btn4=request.getParameter("btn4");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/safegathering","root","shubhi");
if(btn3!=null && btn3.equalsIgnoreCase("login")){
PreparedStatement ps=con.prepareStatement("select * from user where userid=? and password=?");
ps.setString(1,userid);
session.setAttribute("call",userid);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
 PreparedStatement ps1=con.prepareStatement("select * from mallregistration where userid=?");   
 ps1.setString(1,userid);
 ResultSet rs1=ps1.executeQuery();
 if(rs1.next()){
 response.sendRedirect("mallregistrationdetail.jsp");
 }
 else
 {
 response.sendRedirect("mallregistration.jsp");    
 }
}
else{
    response.sendRedirect("home.jsp");
}}

%>
