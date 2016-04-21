<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
 
<html>
<head><title>${title}</title></head>
<body>
<div align="center"><h2>your Created Project<h2>
<table border="1">
  <c:forEach items="${project}" var="item">
    <tr>
      <td><a href="${item.project_id}"+"/"><c:out value="${item.title}" /></a></td>
    </tr>
  </c:forEach>
</table>
 <div align="right">
  <c:if test="${pageContext.request.userPrincipal.name != null}">
     User Info : ${pageContext.request.userPrincipal.name}
         | <a href="<c:url value="/logout" />" >Logout</a>  
  </c:if></div>  
</body>
</html>