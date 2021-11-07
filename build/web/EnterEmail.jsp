<%-- 
    Document   : EnterEmail
    Created on : Oct 23, 2021, 2:13:07 PM
    Author     : Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="preResetPassword">
            <input type="text" name="email" value="" placeholder="ENTER YOUR USERNAME"/>
            <p>${mess}</p>
            <button type="submit">Send</button>
        </form>
    </body>
</html>
