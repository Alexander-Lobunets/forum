<%--
  Created by IntelliJ IDEA.
  User: alobunets
  Date: 1/14/2015
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>QA BSM Platform forum: New topic</title>
</head>
<body>
<h1>Create new topic</h1>

<a href="forum" id="homeLink"> Home </a>

<form:form method="POST"  action="new_topic1" id="createTopic">
  <table>
    <tr>
      <td><form:label path="messageTitle">Title</form:label></td>
      <td><form:input path="messageTitle" /></td>
    </tr>
    <tr>
      <td><form:label path="messageBody">Message</form:label></td>
      <td><form:input path="messageBody" /></td>
    </tr>
    <tr>
      <td><form:label path="username">Username</form:label></td>
      <td><form:input path="username" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Submit" id="btnSubmit"/>
        <input type="button" value="Cancel" onclick="window.location='forum'" id="btnCancel"  />
      </td>
    </tr>
  </table>
</form:form>

</body>
</html>
