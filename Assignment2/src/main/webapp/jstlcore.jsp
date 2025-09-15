<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL Core Tags Demo (Fixed)</title>
</head>
<body>
<h2>JSTL Core Tags – Working Examples</h2>

<!-- set : create variables -->
<c:set var="num" value="10" />
<c:set var="fruits" value="apple,banana,cherry" />

<!-- out : print values -->
<p><b>out:</b> Number is <c:out value="${num}" /></p>

<!-- if : conditional -->
<c:if test="${num > 5}">
  <p><b>if:</b> ${num} is greater than 5</p>
</c:if>

<!-- choose / when / otherwise : switch-case style -->
<c:choose>
   <c:when test="${num == 10}">
       <p><b>choose/when:</b> num equals 10</p>
   </c:when>
   <c:otherwise>
       <p><b>otherwise:</b> num is not 10</p>
   </c:otherwise>
</c:choose>

<!-- forEach : iterate from 1 to 3 -->
<p><b>forEach:</b></p>
<ul>
<c:forEach var="i" begin="1" end="3">
   <li>Count: ${i}</li>
</c:forEach>
</ul>

<!-- forTokens : iterate over comma-separated string -->
<p><b>forTokens:</b></p>
<ul>
<c:forTokens var="fruit" items="${fruits}" delims=",">
   <li>${fruit}</li>
</c:forTokens>
</ul>

<!-- catch : handle exceptions (EL will throw divide by zero) -->
<p><b>catch:</b></p>
<c:catch var="err">
   ${1/0}
</c:catch>
<c:if test="${not empty err}">
   <p style="color:red;">Error caught: ${err}</p>
</c:if>

<!-- import : include content of a local file -->
<p><b>import:</b></p>
<c:import url="sample.html" var="pageContent" />
<p>Imported content: <c:out value="${pageContent}" /></p>
<p>Length of imported content: ${fn:length(pageContent)} characters</p>

<!-- url + param : build a URL with query parameter -->
<p><b>url + param:</b></p>
<c:url var="myUrl" value="nextPage.jsp">
   <c:param name="id" value="${num}" />
</c:url>
<p>Generated URL: ${myUrl}</p>

<!-- redirect : commented to avoid automatic redirect -->
<%-- 
<c:redirect url="nextPage.jsp">
   <c:param name="id" value="${num}" />
</c: redirect>
--%>
<p>(redirect example is commented so the page doesn’t immediately jump)</p>

<!-- remove : delete a scoped variable -->
<c:remove var="num" />
<p><b>remove:</b> After removing, num = ${num}</p>

</body>
</html>
