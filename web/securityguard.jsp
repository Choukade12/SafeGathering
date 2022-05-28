
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.addHeader("Pragma", "no-cache");
    response.addHeader("cache-control", "no-store");
    String value = (String)session.getAttribute("call");
    if(session==null)
    {
        response.sendRedirect("home.jsp");
    }
    if(value==null)
    {
        response.sendRedirect("home.jsp");
    }
%>
