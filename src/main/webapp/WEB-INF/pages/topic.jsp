<%--
  Created by IntelliJ IDEA.
  User: alobunets
  Date: 1/15/2015
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>

</head>
<body>
<a href="../forum" id="homeLink"> Home </a>


 <h3><b>Topic title: </b>${topic.title}</h3>
 <c:forEach var="message" items="${topic.messages}">
    <br>Text: ${message.messageBody}</br>
    <br>Post date: ${message.postDate}</br>
    <br>Posted by user: ${message.username}</br>
    <br> -----------------------------------------------------------
 </c:forEach>

 <%--<input type="checkbox" id="check" />--%>
 <form action="saveMessage" method="post">
   Quick answer:
   <br><input type="text" name="fname"><br>
     <input type="submit" value="Submit">
     <%--<input type="button" value="Cancel" onclick="window.location='forum'" id="btnCancel"  />--%>
 </form>
</body>
</html>
