<%@page import="java.util.List"%>
<%@page import="com.database.DatabaseImplementation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./common/navigation.jsp" />
<center><br>

<%
DatabaseImplementation di=new DatabaseImplementation();
List<String> groups=di.getGroups();

%>
<form action="RemoveGroup" method="get">
<select name="groupname">
<%
for(String s: groups){%>
	
	<option value="<%=s%>"><%=s%></option>
<% }

%>

</select>
<input type="submit" value="delete"/>
</form>
</body>
</html>