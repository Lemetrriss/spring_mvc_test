<%--
  Created by IntelliJ IDEA.
  User: dmytro
  Date: 23.02.21
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="processFormVersionThree" method="get">
    <label>
      <input type="text" name="studentName" placeholder="What is your name?">
    </label>
    <input type="submit" >
  </form>

  <a href="${pageContext.request.contextPath}/" >Back</a>
  </body>
</html>
