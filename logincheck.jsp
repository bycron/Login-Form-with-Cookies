<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Check</title>
    </head>
    <body>
        <%
            if (request.getParameter("saveUser")!=null) {
                String userEnter=request.getParameter("userEnter");
                Cookie username = new Cookie("username", userEnter);
                username.setPath("/");
                username.setMaxAge(((60*60)*24)*90);
                response.addCookie(username);
            }
            else {
                String userEnter=request.getParameter("userEnter");
                Cookie username = new Cookie("username", userEnter);
                username.setPath("/");
                username.setMaxAge(0);
                response.addCookie(username);
            }
            
            String userEntered = (request.getParameter("userEnter"));
            String passEntered = (request.getParameter("passEnter"));
            
            if ((userEntered.equalsIgnoreCase("student"))&&(passEntered.equals("password"))) {
                out.println("You have logged in successfully!"); 
                out.println("</br><a href=\"index.jsp\">Return Home</a>");
            }
            else {
                out.println("Invalid username or password entered.");
                out.println("</br><a href=\"index.jsp\">Return Home</a>");
            }
        %>
    </body>
</html>