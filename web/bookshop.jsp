<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("Jdbc:mysql://localhost:3306/safegathering","root","shubhi");

PreparedStatement ps1=con.prepareStatement("select shopno,shopname,floorno from shoptable");
ResultSet rs1=ps1.executeQuery();
ArrayList list1=new ArrayList(); 
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
while(rs1.next())
{
    list1.add(rs1.getInt(1));
    list2.add(rs1.getString(2));
    list3.add(rs1.getInt(3));    
}
PreparedStatement ps2=con.prepareStatement("select tokennumber from subuser");
ResultSet rs2=ps2.executeQuery();
ArrayList list4=new ArrayList();
while(rs1.next())
{
    
}}
%>

<html>
    <style>
        .headingtheme
        {
          font-family:Copperplate Gothic Light;
          font-size: 20;
          color:  darkblue;
        }
        .icontheme
        {
          font-family:Copperplate Gothic Light;
          font-size: 15;
          color:  darkblue;
        }
    </style>

    <body>
        <div style="width:100%;height:70px;background-color:white;"> 
            <table width="50%" height="70px">
                <tr>
                    <td class="heading">SAFE GATHERING</td>
                </tr>
            </table>
            <table style="width:50%;height:70px;margin-top:-60px;margin-left:50%">
                <tr>
                    <td class="icon"><a href="home.jsp">home</a></td>
                    <td class="icon"><a href="mailto:">contact us</a></td>
                    <td class="icon"><a href="about.jsp">about us</a></td>
                    <td class="icon"><a href="help.jsp">help</a></td>
                </tr>
            </table>
        </div>
                <div style="width:100%;height:190px;"> 
        <image src="covid-welcome-header_gif.gif" width="100%" height="190px">
        </div>
        <div style="width:60%;height:120px;margin-top:2%;margin-left:2%;background:rgba(89,171,227,0.9);">
            WE ARE HAPPY TO SEE YOU HERE!
        </div>
        <div style="width:13%;height:60px;margin-top:-117px;margin-left:65%;background:rgba(89,171,227,0.9);">
            <table width="100% height=60px">
                <tr align="center">
                    <td><a href="useraccount.jsp"><input type="submit" value="ACCOUNT"></a></td>
                </tr>
            </table>
        </div>
        <div style="width:13%;height:60px;margin-top:-60px;margin-left:80%;background:rgba(89,171,227,0.9);">
                     <table width="100% height=60px">
                <tr align="center">
                    <td><a href="home.jsp">LOGOUT</a></td>
                </tr>
            </table>
        </div>
        <div style="width:40%;height:400px;margin-top:4%;margin-left:9%;background:rgba(0,0,0,0.3);">
            <table width="100%" height="400px">
                <tr>
                    <td>USER ID</td>
                    <td colspan="2"><%=session.getAttribute("call")%></td>
                </tr>
                <tr>
                    <td colspan="2"><buttongroup>SELECT CANDIDATE
                        
                        <input type="radio">
                </buttongroup></td>
                </tr>
            </table>
        </div>
        <div style="width:40%;height:400px;margin-top:-400px;margin-left:55%;background-color:buttonhighlight;"> 
        <table>
            <%for(int i=0;i<list1.length();i++){%>
            <tr>
                <td><%=list1.get(i)%></td>
                 <td><%=list2.get(i)%></td>
                 <td><%=list3.get(i)%></td>
            </tr>
                 <%}%>
        </table>
        </div>
       </body>
       </html>
