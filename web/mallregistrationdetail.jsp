<%@ include file = "securityguard.jsp"%>
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
            <%
                String date =(String)session.getAttribute("call1");
                session.setAttribute("call5", date);
                int tokennumber = Integer.parseInt((String)session.getAttribute("call2"));
                session.setAttribute("call6", tokennumber);
                String slot = (String)session.getAttribute("call3");
                session.setAttribute("call7", slot);
                String userid = (String)session.getAttribute("call4");
                session.setAttribute("call8", userid);
            %>
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
        <img src="covid-welcome-header_gif.gif" width="100%" height="190px">
        </div>
            <div style="width:40%;height:400px;margin-top:4%;margin-left:12%;background:rgba(0,0,0,0.3);">
                <table width="100%" height="400px"border="1">
                    <tr align="center">
                        <td>DATE</td>
                         <td>date</td>                       
                    </tr>
                </table>
                    <div style="width:40%;height:200px;margin-top:-200px;margin-left:140%;background:rgba(0,0,0,0.3);">
                        <table>
                            <tr>
                                <td><a href="mallregistration.jsp">EDIT DETAILS</a></td>
                            </tr>
                            <tr>
                                 <td><a href="bookshop.jsp">BOOK SHOP</a></td>
                            </tr>
                            <tr>
                                 <td><a href="useraccount.jsp">ACCOUNT</a></td>   
                            </tr>
                            <tr>
                                 <td><a href="home.jsp">LOGOUT</a></td>   
                            </tr>
                        </table>
                    </div>
            </body>
 </html>