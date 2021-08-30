<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>Hii my friend it index page</h1>

        <p>User: <security:authentication property="principal.username" /> </p>
        <p>Role(s): <security:authentication property="principal.authorities" /></p>

        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">
            <input type="submit" value="Logout" />
        </form:form>
    </body>
</html>
