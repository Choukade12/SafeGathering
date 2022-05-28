<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <body background="people-network-connections-d-illustration-white-background1-78186502.jpg" opacity="0.7">
        <div style="width:100%;height:70px;background-color:white;"> 
            <table width="50%" height="70px">
                <tr>
                    <td class="heading">SAFE GATHERING</td>
                </tr>
            </table>
            <table style="width:50%;height:70px;margin-top:-60px;margin-left:50%">
                <tr>
                    <td class="icon">home</td>
                    <td class="icon">contact us</td>
                    <td class="icon">about us</td>
                    <td class="icon">help</td>
                </tr>
            </table>
        </div>
        <div style="width:100%;height:190px;"> 
        <img src="covid-welcome-header_gif.gif" width="100%" height="190px">
        </div>
        <div style="width:40%;height:470px;margin-left:5%;background:rgba(0,0,0,0.5);margin-top:60px">
        <form action="signupcode.jsp" onsubmit="return validation()">
            <table width="100%" height="470px">
                <tr align="center">
                    <td colspan="2">sign up</td>
                </tr>
                <tr align="center">
                    <td>Full name</td>
                    <td><input type="text"  id="fullname" name="fname" placeholder=" enter full name"> </td>
                    <td><span id="errorname" style="color:red"></span></td>
                </tr>
                <tr align="center">
                    <td>User ID</td>
                    <td><input type="text" id="userid" name="userid" placeholder=" enter user ID"> </td>
                    <td><span id="errorid" style="color:red"></span></td>
                </tr>
                <tr align="center">
                    <td>password</td>
                    <td><input type="password" id="password" name="pass" placeholder=" enter password"> </td>
                    <td><span id="errorpass" style="color:red"></span></td>
                </tr>                
                 <tr align="center">
                    <td>Email</td>
                     <td><input type="text" id="email" name="email" placeholder="email"> </td> 
                     <td><span id="erroremail" style="color:red"></span></td>
                </tr>  
                <tr align="center">
                    <td colspan="2">
                       <td colspan="2"><input type="submit" value="signup" name="btn1"> </td>                      
                    
                     
                       <td><input type="Reset" value="Clear" name="btn2"> </td>                      
                                    
                </tr>
            </table>
            </form>
        </div>
        <div style="width:40%;height:470px;margin-left:54%;background:rgba(0,0,0,0.5);margin-top:-470px;">
            <form action="logincode.jsp" >
              <table width="100%" height="470px">
                <tr align="center">
                    <td colspan="2">login</td>
                </tr>  
                <tr align="center">
                    <td>User ID</td>
                    <td><input type="text" name="userid" placeholder="enter user ID"> </td>
                </tr>
                <tr align="center">
                    <td>password</td>
                    <td><input type="password" name="pass" placeholder=" enter password"> </td>
                </tr>                 
                <tr align="center">
                    
                       <td colspan="2"><input type="submit" value="login" name="btn3"> </td>                      
                    
                     
                       <td><input type="Reset" value="Clear" name="btn4"> </td>                      
                                      
                </tr>
            </table>
        
        </div>   
        <script type="text/javascript">
            function validation()
            {
                var fullname = document.getElementById('fullname').value;
                var userid = document.getElementById('userid').value;
                var password = document.getElementById('password').value;
                var email = document.getElementById('email').value;
                
                var namecheck = /^[A-Za-z]{3,30}$/;
                var idcheck = /^[A-Za-z0-9_.]{3,20}$/;
                /*var passcheck = /^[A-Za-z0-9._]{8,15}$^/;*/
                var emailcheck = /^[A-Za-z0-9.]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z.]{2,6}$/;
                
                if(namecheck.test(fullname))
                {
                    document.getElementById('errorname').innerHTML=" ";
                }
                else
                {
                    document.getElementById('errorname').innerHTML="**INVALID**";
                    return false;
                }
                if(idcheck.test(userid))
                {
                    document.getElementById('errorid').innerHTML=" ";
                }
                else
                {
                    document.getElementById('errorid').innerHTML="**INVALID**";
                    return false;
                }
                /*if(passcheck.test(password))
                {
                    document.getElementById('errorpass').innerHTML=" ";
                }
                else
                {
                    document.getElementById('errorpass').innerHTML="**INVALID**";
                    return false;
                }*/
                if(emailcheck.test(email))
                {
                    document.getElementById('erroremail').innerHTML=" ";
                }
                else
                {
                    document.getElementById('erroremail').innerHTML="**INVALID**";
                    return false;
                }
            }
        </script>
    </body>
</html>
