<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head><title>JSTL Functions</title></head>
<body>
  <!-- Base data -->
  <c:set var="txt" value=" Hello, World "/>
  <c:set var="csv" value="a,b,c"/>
  <c:set var="arr" value="${fn:split(csv, ',')}"/>

  <!-- Required JSTL function demos -->
  <p>length: ${fn:length(txt)}</p>
  <p>trim: '${fn:trim(txt)}'</p>
  <p>toUpperCase: ${fn:toUpperCase(txt)}</p>
  <p>toLowerCase: ${fn:toLowerCase(txt)}</p>

  <p>contains 'World': ${fn:contains(txt, 'World')}</p>
  <p>containsIgnoreCase 'hello': ${fn:containsIgnoreCase(txt, 'hello')}</p>
  <p>startsWith ' He': ${fn:startsWith(txt, ' He')}</p>
  <p>endsWith 'ld ': ${fn:endsWith(txt, 'ld ')}</p>

  <p>indexOf 'lo': ${fn:indexOf(txt, 'lo')}</p>
  <p>substring(1,5): ${fn:substring(txt, 1, 5)}</p>
  <p>substringBefore ',': ${fn:substringBefore('x,y,z', ',')}</p>
  <p>substringAfter  ',': ${fn:substringAfter('x,y,z', ',')}</p>

  <p>replace 'World'→'JSP': ${fn:replace(txt, 'World', 'JSP')}</p>
  <p>escapeXml of '&lt;b&gt;x&lt;/b&gt;': ${fn:escapeXml('<b>x</b>')}</p>

  <p>split '${csv}': 
    <c:forEach var="x" items="${arr}">${x} </c:forEach>
  </p>
  <p>join with '-': ${fn:join(arr, '-')}</p>
</body>
</html>
