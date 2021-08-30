<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>Hii my friend it index page</h1>
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">
            <input type="submit" value="Logout" />
        </form:form>
    </body>
</html>
