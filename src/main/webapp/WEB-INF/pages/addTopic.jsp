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
    <title></title>
</head>
<body>
<form:form method="POST"  action="new_topic1">
  <table>
    <tr>
      <td><form:label path="title">Title</form:label></td>
      <td><form:input path="title" /></td>
    </tr>
    <%--<tr>--%>
      <%--<td><form:label path="age">Age</form:label></td>--%>
      <%--<td><form:input path="age" /></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
      <%--<td><form:label path="id">id</form:label></td>--%>
      <%--<td><form:input path="id" /></td>--%>
    <%--</tr>--%>
    <tr>
      <td colspan="2">
        <input type="submit" value="Submit"/>
      </td>
    </tr>
  </table>
</form:form>

</body>
</html>
