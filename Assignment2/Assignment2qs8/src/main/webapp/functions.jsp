<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
    String xmlText = "<tag>&value</tag>";
    request.setAttribute("xmlText", xmlText);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL fn Demo</title>
</head>
<body>
<h2>JSTL Functions Demo</h2>

<c:set var="text" value="Hello, JSTL Functions!"/>
<c:set var="csv" value="apple,banana,cherry"/>
<c:set var="arr" value="${fn:split(csv, ',')}"/>

<ul>
    <li>contains: <c:out value="${fn:contains(text, 'JSTL')}"/></li>
    <li>containsIgnoreCase: <c:out value="${fn:containsIgnoreCase(text, 'jstl')}"/></li>
    <li>endsWith: <c:out value="${fn:endsWith(text, '!')}"/></li>
    <li>escapeXml: <c:out value="${fn:escapeXml(xmlText)}"/></li>
    <li>indexOf: <c:out value="${fn:indexOf(text, 'JSTL')}"/></li>
    <li>join: <c:out value="${fn:join(arr, ' | ')}"/></li>
    <li>length(text): <c:out value="${fn:length(text)}"/></li>
    <li>length(array): <c:out value="${fn:length(arr)}"/></li>
    <li>replace: <c:out value="${fn:replace(text, 'Functions', 'Tags')}"/></li>
    <li>split count: <c:out value="${fn:length(fn:split(csv, ','))}"/></li>
    <li>startsWith: <c:out value="${fn:startsWith(text, 'Hello')}"/></li>
    <li>substring(7,11): <c:out value="${fn:substring(text, 7, 11)}"/></li>
    <li>substringAfter: <c:out value="${fn:substringAfter(text, ', ')}"/></li>
    <li>substringBefore: <c:out value="${fn:substringBefore(text, ',')}"/></li>
    <li>toLowerCase: <c:out value="${fn:toLowerCase('AbC')}"/></li>
    <li>toUpperCase: <c:out value="${fn:toUpperCase('AbC')}"/></li>
    <li>trim: <c:out value="${fn:trim('  surrounded by spaces  ')}"/></li>
</ul>

</body>
</html>
