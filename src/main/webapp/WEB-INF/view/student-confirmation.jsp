<%--
  Created by IntelliJ IDEA.
  User: dmytro
  Date: 25.02.21
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student confirmation</title>
</head>
<body>
    Student is confirmed: ${student.firstName} ${student.lastName}
    </br>
    </br>
    from ${student.country}
    </br>
    </br>
    Favourite Language: ${student.favouriteLanguage}
    </br>
    </br>
<%--    Operating system: ${student.operatingSystems}--%>
<ul>
    <c:forEach var="temp" items="${student.operationSystems}" >
        <li>${temp}</li>
    </c:forEach>
</ul>
</body>
</html>
