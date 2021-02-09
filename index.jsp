<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body>
        <%
            Cookie[] allCookies = request.getCookies();
            int cookieNum=0;
            int userCookie=-1;
            String userName="";
            if ((allCookies.length)!=0) {
                do {
                    if (allCookies[cookieNum].getName().equals("username")) {
                        userCookie=cookieNum;
                        userName=allCookies[userCookie].getValue();
                    }
                    cookieNum++;
                }
                while ((userCookie==-1)&&(cookieNum<allCookies.length));
            }
            
        %>
        <form method="post" action="logincheck.jsp">
            <p>Please enter your username: <input type="text" name="userEnter" value="<%=userName%>"/><br/>
                Please enter your password: <input type="password" name="passEnter"/><br/>
                Save Username?<input type="checkbox" name="saveUser" value="0"/>
                <input type="submit" value="Enter"/>
            </p>
        </form>
    </body>
</html>