<%@page import="java.util.Date"%>  
<%@page import="java.text.SimpleDateFormat"%> 
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
                    <td><a href="sessiondestroy.jsp">LOGOUT</a></td>
                </tr>
            </table>
        </div>
       
        <div style="width:20%;height:50px;margin-top:75px;margin-left:19%;background:rgba(0,0,0,0.3);">ENTER DETAILS</div> 
        <div style="width:40%;height:400px;margin-top:2%;margin-left:9%;background:rgba(0,0,0,0.3);">
            <form action="mallregistrationcode.jsp">
            <table width="100%" height="400px">
                <tr align="center">
                    <td>USER ID</td>
                    <td colspan="2"><input type="text" placeholder="enter userid here" name="userid" value="<%=session.getAttribute("call")%>"></td>   
                </tr>
                <tr align="center">
                        <td>DATE OF VISIT</td>
                        <%Date date=new Date();
                        SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yy");
                      %>
                        <td colspan="2"><input type="text" placeholder="date of visit" name="dov" value="<%=sdf.format(date)%>"></td>
                        <%session.setAttribute("call1",sdf.format(date));%>
                        
                </tr> 
                <tr align="center">
                        <td>NUMBER OF TOKENS</td>
                    <td colspan="2"><select name="nooftoken" value="option">

                            <option>1</option>
                            <option>2</option>
                            <option>3</option>  
                            <option>4</option>  
                            <option>5</option>  
                            
                        </select></td>
                </tr>
                <tr align="center">
                        <td>SLOT</td>
                    <td colspan="2"><select name="slot">

                            <option>morning</option>
                            <option>afternoon</option>
                            <option>evening</option>  
                        </select></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="SAVE" name="btn1"></td>
                </tr>
            </table>
            </form>    
        </div>
        </body>
  </html>
