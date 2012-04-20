<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>


<body>
	<h2>Success!</h2>

	<s:text name="LIFE" />
	<p>
		<s:property value="%{getText('HelloWorld')}" />
	<p>
		<c:forEach items="${list}" var="v">
	${v.name} : ${v.description } <br>
		</c:forEach>
</body>
</html>
