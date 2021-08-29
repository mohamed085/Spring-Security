<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <title>Login</title>
        <style>
            .failed {
                color: red;
            }
        </style>
    </head>

    <body>
        <h3>My Custom Login Page</h3>
        <form:form action="${pageContext.request.contextPath}/auth" method="POST">
            <p>User name: <input type="text" name="username" /></p>
            <p>Password: <input type="password" name="password" /></p>
            <input type="submit" value="Login" />   
        </form:form>
    </body>
</html>
