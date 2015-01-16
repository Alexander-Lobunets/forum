<%--
  Created by IntelliJ IDEA.
  User: alobunets
  Date: 1/15/2015
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title></title>

</head>
<body>
<a href="../forum" id="homeLink"> Home </a>


 <h3><b>Topic title: </b>${topic.title}</h3>
 <c:forEach var="message" items="${topic.messages}">
    <br>Text: ${message.messageBody} </br>
    <br>Post date: ${message.postDate}</br>
    <br>Posted by user: ${message.username}</br>
    <br> -----------------------------------------------------------
 </c:forEach>


<form:form method="POST" action="../topic/${topic.title}" >

    <table>
        <tr>
            <td><form:label path="messageBody">Quick answer</form:label></td>
            <%--<td><form:input path="message.messageBody" /></td>--%>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit" id="btnSubmit">
            </td>
        </tr>
      </table>
</form:form>
</body>
</html>
