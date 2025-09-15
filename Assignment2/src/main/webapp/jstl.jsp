<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL Functions Demo</title>
</head>
<body>
<h2>JSTL Functions Examples</h2>

<c:set var="sample" value="Hello World" />
<c:set var="arr" value="${fn:split('apple,banana,cherry', ',')}" />

<ul>
    <li>contains("Hello World","World") :
        ${fn:contains(sample,"World")}</li>

    <li>containsIgnoreCase("Hello World","world") :
        ${fn:containsIgnoreCase(sample,"world")}</li>

    <li>endsWith("Hello World","World") :
        ${fn:endsWith(sample,"World")}</li>

    <li>escapeXml("&lt;tag&gt;") :
        ${fn:escapeXml("<tag>")}</li>

    <li>indexOf("Hello World","World") :
        ${fn:indexOf(sample,"World")}</li>

    <li>join(array,", ") :
        ${fn:join(arr,", ")}</li>

    <li>length("Hello World") :
        ${fn:length(sample)}</li>

    <li>replace("Hello World","World","JSTL") :
        ${fn:replace(sample,"World","JSTL")}</li>

    <li>split("apple,banana,cherry",",")[1] :
        ${arr[1]}</li>

    <li>startsWith("Hello World","Hello") :
        ${fn:startsWith(sample,"Hello")}</li>

    <li>substring("Hello World",0,5) :
        ${fn:substring(sample,0,5)}</li>

    <li>substringAfter("Hello World","Hello ") :
        ${fn:substringAfter(sample,"Hello ")}</li>

    <li>substringBefore("Hello World"," World") :
        ${fn:substringBefore(sample," World")}</li>

    <li>toLowerCase("Hello World") :
        ${fn:toLowerCase(sample)}</li>

    <li>toUpperCase("Hello World") :
        ${fn:toUpperCase(sample)}</li>

    <li>trim("   Hello World   ") :
        [${fn:trim("   Hello World   ")}]</li>
</ul>

</body>
</html>
