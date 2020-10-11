<%-- 
    Document   : main.jsp
    Created on : Sep 3, 2020, 4:14:10 PM
    Author     : lithinika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   // Create cookies for first and last names.      
   Cookie MyName = new Cookie("My_name", request.getParameter("My_name"));
   
   
   // Set expiry date after 24 Hrs for both the cookies.
   MyName.setMaxAge(60*60); 
   
   
   // Add both the cookies in the response header.
   response.addCookie( MyName );
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
      <ul>
         <li><p><b>My Name:</b>
            <%= request.getParameter("Myname")%>
         </p></li>
         
      </ul> 
    </body>
</html>
