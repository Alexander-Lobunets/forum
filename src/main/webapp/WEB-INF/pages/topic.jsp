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


 <h3><b>Topic title: </b>${topic.title}</h3>
 <c:forEach var="message" items="${topic.messages}">
   <%--<br>Text: <h3>${message.getM}</h3></br>--%>
   <br>Text: <h3>${message.messageBody}</h3></br>
   <br>Post date: <h3>${message.postDate}</h3></br>
   <%--<c:out value="${topic}"/>--%>
   <%--${topic.body}--%>
   <%--<form action="topic/${topic}">--%>
     <%--<input type="submit" value="View topic">--%>
   <%--</form>--%>
   <br> -----------------------------------------------------------
 </c:forEach>

 <%--<input type="checkbox" id="check" />--%>
 <form action="saveMessage" method="post">
   Quick answer:
   <br><input type="text" name="fname"><br>

   <input type="submit" value="Submit">
 </form>
</body>
</html>
