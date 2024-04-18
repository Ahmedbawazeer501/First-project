<%@page import="com.database.DatabaseImplementation"%>
<%@page import="com.interfaces.DatabaseInterface"%>
<%@page import="com.model.UserModel"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./common/navigation.jsp" />
	<%
DatabaseInterface di=new DatabaseImplementation();
List<UserModel> um= di.viewMembers();
if(um==null){%>
	<p>No users found</p>
	<% }else{%>
	<table class="table">
		<tr>
			<td>User Mail</td>
			<td>User Group</td>
			<td>status</td>
		</tr>
		<%
for(UserModel um1: um){%>
		<tr>
			<td><%=um1.getEmail() %></td>
			<td><%=um1.getGroup() %></td>
			<td><a href="approvemember?userid=<%=um1.getUserid()%>">Approve</a></td>
		</tr>


		<%

}
%>

	</table>
	<% }

%>
</body>
</html>
