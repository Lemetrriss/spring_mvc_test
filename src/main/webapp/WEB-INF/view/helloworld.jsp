<%--
  Created by IntelliJ IDEA.
  User: dmytro
  Date: 24.02.21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hallo world!</title>
</head>
<body>
<h2>Hello World of Spring!</h2>
<br/>
Student name: ${param.studentName}
</br>
The message: ${message}
<br/>
<a href="showForm">Back</a>
<img src="${pageContext.request.contextPath}/resources/images/flickr.jpg">
</body>
</html>
