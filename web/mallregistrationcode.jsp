<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Date"%>
<%
 
 String dov=(String)session.getAttribute("call1"); 
 
 int nooftoken=Integer.parseInt(request.getParameter("nooftoken"));
 session.setAttribute("call2",nooftoken);
 String slot=request.getParameter("slot");
  session.setAttribute("call3",slot);
 String userid=(String)session.getAttribute("call");
 session.setAttribute("call4", userid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/safegathering","root","shubhi");

PreparedStatement ps1=con.prepareStatement("insert into mallregistration values(?,?,?,?)");
ps1.setString(1,dov);
ps1.setString(2,slot);
ps1.setString(3,userid);
ps1.setInt(4,nooftoken);
PreparedStatement ps2=con.prepareStatement("select * from mallregistration where slot=?");
ps2.setString(1,slot);
int COUNT=0;
ResultSet rs=ps2.executeQuery();
while(rs.next())
{
    int value=rs.getInt(4);
 COUNT=COUNT+value;  
}
int TOTAL=COUNT+nooftoken;
if(TOTAL<=100)
{
 ps1.executeUpdate();
 for(int j=1;j<=nooftoken;j++)
 {
  PreparedStatement ps3=con.prepareStatement("insert into subuser(date,slot,userid) values(?,?,?)");   
  ps3.setString(1,dov);
  ps3.setString(2,slot);
  ps3.setString(3,userid);
  ps3.executeUpdate();
 }
response.sendRedirect("mallregistrationdetail.jsp");
}
else
{
    JOptionPane.showMessageDialog(null,"NO SLOT AVAILABLE");
    response.sendRedirect("mallregistration.jsp");
}
%>