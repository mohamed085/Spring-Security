<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>Hii my friend it index page</h1>
        <Hr>

        <p>User: <security:authentication property="principal.username" /> </p>
        <p>Role(s): <security:authentication property="principal.authorities" /></p>

        <security:authorize access="hasRole('MANAGER')">
            <p><a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>(Only for Manager peeps)</p>
        </security:authorize>

        <security:authorize access="hasRole('ADMIN')">
            <p><a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>(Only for Admin peeps)</p>
        </security:authorize>
        <hr>

        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">
            <input type="submit" value="Logout" />
        </form:form>
    </body>
</html>
