<%--
  Created by IntelliJ IDEA.
  User: lobunets
  Date: 07.01.2015
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>

<body>
<a href="new_topic1">Add new Topic</a>

<c:forEach var="topic" items="${topics}">
  <h3><b>Topic title: </b>${topic.title}</h3>
  <c:forEach var="message" items="${topic.messages}">
     <br>Text: ${message.messageBody}</br>
     <br>Post date: ${message.postDate}</br>
     <br>Created by: ${message.username}</br>
     <form action="topic/${topic.title}">
           <input type="submit" value="View topic">
    </form>
    <br> -----------------------------------------------------------
  </c:forEach>
</c:forEach>

</body>
</html>
