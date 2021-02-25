<%--
  Created by IntelliJ IDEA.
  User: dmytro
  Date: 25.02.21
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form action="processStudentForm" modelAttribute="student">
        First name: <form:input path="firstName" />
        </br>
        </br>
        Last name: <form:input path="lastName" />
        </br>
        </br>
        Your country: <form:select path="country">
<%--                <form:options itemLabel="LABEL" itemValue="VALUE" />--%>
                <form:options items="${countryList}"/>
<%--            <form:option value="Brazil" label="Brazil" />--%>
<%--            <form:option value="Germany" label="Germany" />--%>
<%--            <form:option value="France" label="France" />--%>
<%--            <form:option value="India" label="India" />--%>
        </form:select>
        </br>
        </br>
        Favoite Language:
        <%--
        path - имя поля в классе студент куда записіваем значение
        items - Мапа значений которая приходит и из чего вібираем
        --%>
        <form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOpt}" />
<%--        Java <form:radiobutton path="favouriteLanguage" value="Java" />--%>
<%--        C# <form:radiobutton path="favouriteLanguage" value="C#" />--%>
<%--        PHP <form:radiobutton path="favouriteLanguage" value="PHP" />--%>
<%--        Ruby <form:radiobutton path="favouriteLanguage" value="Ruby" />--%>
        </br>
        </br>
        Windows: <form:checkbox path="operationSystems" value="Windows" />
        MacOS: <form:checkbox path="operationSystems" value="MacOS" />
        Linux: <form:checkbox path="operationSystems" value="Linux" />
        </br>
        </br>
        <input type="submit" value="Submit">
    </form:form>
</body>
</html>